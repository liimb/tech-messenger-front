import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tech_messenger/app/app_logger.dart';
import 'package:tech_messenger/core/common/secure_storage/secure_storage.dart';
import 'package:tech_messenger/core/common/user_local_storage/user_local_storage.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat_create_response/chat_create_response.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';
import 'package:tech_messenger/modules/chat/domain/repository/chat_repository_interface.dart';

part 'chat_event.dart';
part 'chat_state.dart';
part 'chat_bloc.freezed.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final IChatRepository _chatRepository;
  final SecureStorage _secureStorage;
  final UserLocalStorage _userStorage;
  StreamSubscription<List<ChatModel>>? _sub;
  String? _pendingChatId;
  bool _isSubscriptionActive = false;
  String? _currentUserId;

  ChatBloc({
    required IChatRepository chatRepository,
    required UserLocalStorage userStorage,
    required SecureStorage secureStorage,
  }) : _chatRepository = chatRepository,
       _userStorage = userStorage,
       _secureStorage = secureStorage,
       super(ChatState.initial()) {
    on<ChatStartedEvent>(_onStarted);
    on<ChatCreateEvent>(_onCreate);
    on<ChatRefreshEvent>(_onRefresh);
    on<ChatsUpdatedEvent>(_onChatsUpdated);
    on<ChatSelectEvent>(_onSelect);
    on<ChatClearSelectionEvent>(_onClearSelection);
    on<ChatResetEvent>(_onReset);
  }

  void _onSelect(ChatSelectEvent event, Emitter<ChatState> emit) {
    final currentChats = state.maybeWhen(
      loaded: (chats, _) => List<ChatModel>.from(chats),
      orElse: () => <ChatModel>[],
    );

    emit(ChatState.loaded(chats: currentChats, selectedChatId: event.chatId));
  }

  void _onClearSelection(
    ChatClearSelectionEvent event,
    Emitter<ChatState> emit,
  ) {
    final currentChats = state.maybeWhen(
      loaded: (chats, _) => List<ChatModel>.from(chats),
      orElse: () => <ChatModel>[],
    );

    emit(ChatState.loaded(chats: currentChats, selectedChatId: null));
  }

  void _onReset(ChatResetEvent event, Emitter<ChatState> emit) {
    AppLogger.info('ChatResetEvent: resetting chat state, currentUserId: $_currentUserId');
    _sub?.cancel();
    _sub = null;
    _isSubscriptionActive = false;
    _pendingChatId = null;
    _currentUserId = null;
    // Очищаем контроллеры в репозитории, чтобы старые подписки не использовались
    _chatRepository.dispose();
    emit(const ChatState.initial());
    AppLogger.info('ChatResetEvent: reset complete');
  }

  Future<void> _onCreate(ChatCreateEvent event, Emitter<ChatState> emit) async {
    try {
      AppLogger.info(
        'Creating chat with users: ${event.chatCreate.userIdOne} and ${event.chatCreate.userIdTwo} with body ${event.chatCreate.toJson()}',
      );
      final response = await _chatRepository.createChat(event.chatCreate);

      if (response.response.statusCode == 200) {
        final createResp = ChatCreateResponse.fromJson(response.response.data);
        final newChatId = createResp.chatId;
        AppLogger.info('Chat created successfully with ID: $newChatId');

        // Сохраняем ID чата, который нужно выбрать после появления в списке
        _pendingChatId = newChatId;

        // Обновляем список чатов, чтобы новый чат появился
        add(const ChatEvent.refresh());

        // Также сразу выбираем чат, если он уже есть в текущем состоянии
        final currentChats = state.maybeWhen(
          loaded: (chats, _) => chats,
          orElse: () => <ChatModel>[],
        );
        final chatExists = currentChats.any((chat) => chat.id == newChatId);
        if (chatExists) {
          add(ChatSelectEvent(newChatId));
          _pendingChatId = null;
        }
      } else {
        AppLogger.error(
          'Create chat failed with status: ${response.response.statusCode} ${response.response.data}',
        );
        add(const ChatEvent.refresh());
      }
    } catch (e) {
      AppLogger.error('Create chat error', e);
      _pendingChatId = null;
    }
  }

  Future<void> _onStarted(
    ChatStartedEvent event,
    Emitter<ChatState> emit,
  ) async {
    final user = await _userStorage.getUser();
    final userId = user?.id;

    if (userId == null) {
      AppLogger.warning('ChatStartedEvent: userId is null, cannot start');
      return;
    }

    AppLogger.info('ChatStartedEvent: starting for userId: $userId, currentUserId: $_currentUserId');

    // Если подписка уже активна для того же пользователя, не перезапускаем её
    if (_isSubscriptionActive && _sub != null && _currentUserId == userId) {
      AppLogger.info('ChatStartedEvent: subscription already active for same user, refreshing');
      // Просто обновляем список чатов, не меняя состояние на loading
      add(const ChatEvent.refresh());
      return;
    }

    // Если userId изменился, отменяем старую подписку
    if (_currentUserId != null && _currentUserId != userId) {
      AppLogger.info('ChatStartedEvent: userId changed from $_currentUserId to $userId, resetting subscription');
      _sub?.cancel();
      _sub = null;
      _isSubscriptionActive = false;
      _chatRepository.dispose();
    }

    // Сохраняем текущее состояние, чтобы не скрывать список чатов
    final currentState = state;
    final shouldEmitLoading = currentState is ChatInitialState;

    if (shouldEmitLoading) {
      emit(const ChatState.loading());
    }

    try {
      _sub?.cancel();
      _currentUserId = userId;
      _isSubscriptionActive = true;
      AppLogger.info('ChatStartedEvent: creating subscription for userId: $userId');
      _sub = _chatRepository
          .watchChats(userId)
          .listen(
            (chats) {
              AppLogger.info('ChatStartedEvent: received ${chats.length} chats from stream');
              add(ChatEvent.chatsUpdated(chats));
            },
            onError: (e) {
              AppLogger.error('ChatOnStartedEvent error', e);
              _isSubscriptionActive = false;
              _currentUserId = null;
            },
            onDone: () {
              AppLogger.info('ChatStartedEvent: stream done');
              _isSubscriptionActive = false;
            },
            cancelOnError: false,
          );

      AppLogger.info('ChatStartedEvent: requesting chats refresh');
      add(const ChatEvent.refresh());
    } catch (e) {
      AppLogger.error('ChatStartedEvent: exception during setup', e);
      _isSubscriptionActive = false;
      _currentUserId = null;
      emit(ChatState.failure(message: e.toString()));
    }
  }

  void _onRefresh(ChatRefreshEvent event, Emitter<ChatState> emit) async {
    final user = await _userStorage.getUser();
    final userId = user?.id;

    if (userId == null) return;

    final token = await _secureStorage.getToken();
    if (token == null) return;

    _chatRepository.requestChats(token.accessToken);
  }

  void _onChatsUpdated(ChatsUpdatedEvent event, Emitter<ChatState> emit) {
    // Если приходит пустой список, устанавливаем состояние loaded с пустым списком
    if (event.chats.isEmpty) {
      emit(ChatState.loaded(chats: <ChatModel>[], selectedChatId: null));
      _pendingChatId = null;
      return;
    }

    final currentChats = state.maybeWhen(
      loaded: (chats, selected) => List<ChatModel>.from(chats),
      orElse: () => <ChatModel>[],
    );

    String? prevSelected = state.maybeWhen(
      loaded: (chats, selected) => selected,
      orElse: () => null,
    );

    final Map<String, ChatModel> map = {for (final c in currentChats) c.id: c};

    for (final updated in event.chats) {
      final id = updated.id;
      map[id] = updated;
    }

    final merged = map.values.toList();
    merged.sort((a, b) {
      if (a.lastMessageTime == null) return 1;
      if (b.lastMessageTime == null) return -1;
      return b.lastMessageTime!.compareTo(a.lastMessageTime!);
    });

    // Если есть ожидающий чат для выбора и он появился в списке, выбираем его
    if (_pendingChatId != null) {
      final chatExists = merged.any((chat) => chat.id == _pendingChatId);
      if (chatExists) {
        AppLogger.info(
          'Pending chat found in list, selecting: $_pendingChatId',
        );
        prevSelected = _pendingChatId;
        _pendingChatId = null;
      } else {
        AppLogger.info(
          'Pending chat $_pendingChatId not yet in list, waiting...',
        );
      }
    }

    AppLogger.info(
      'Emitting loaded state with ${merged.length} chats, selected: $prevSelected',
    );
    emit(ChatState.loaded(chats: merged, selectedChatId: prevSelected));
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    _isSubscriptionActive = false;
    _chatRepository.dispose();
    return super.close();
  }
}
