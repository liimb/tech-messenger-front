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
  }

  void _onSelect(ChatSelectEvent event, Emitter<ChatState> emit) {
    final currentChats = state.maybeWhen(
      loaded: (chats, _) => List<ChatModel>.from(chats),
      orElse: () => <ChatModel>[],
    );

    emit(ChatState.loaded(chats: currentChats, selectedChatId: event.chatId));
  }

  Future<void> _onCreate(ChatCreateEvent event, Emitter<ChatState> emit) async {
    try {
      final response = await _chatRepository.createChat(event.chatCreate);

      if (response.response.statusCode == 200) {
        final createResp = ChatCreateResponse.fromJson(response.response.data);
        final newChatId = createResp.chatId;

        add(ChatSelectEvent(newChatId));
      }

      add(const ChatEvent.refresh());
    } catch (e) {
      AppLogger.error('Create chat error', e);
    }
  }

  Future<void> _onStarted(
    ChatStartedEvent event,
    Emitter<ChatState> emit,
  ) async {
    final user = await _userStorage.getUser();
    final userId = user?.id;

    if (userId == null) return;

    emit(const ChatState.loading());
    try {
      _sub?.cancel();
      _sub = _chatRepository
          .watchChats(userId)
          .listen(
            (chats) {
              add(ChatEvent.chatsUpdated(chats));
            },
            onError: (e) {
              AppLogger.error('ChatOnStartedEvent error', e);
            },
          );

      add(ChatEvent.refresh());
    } catch (e) {
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
    final currentChats = state.maybeWhen(
      loaded: (chats, selected) => List<ChatModel>.from(chats),
      orElse: () => <ChatModel>[],
    );

    final String? prevSelected = state.maybeWhen(
      loaded: (chats, selected) => selected,
      orElse: () => null,
    );

    if (event.chats.isEmpty) return;

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

    emit(ChatState.loaded(chats: merged, selectedChatId: prevSelected));
  }

  @override
  Future<void> close() {
    _sub?.cancel();
    _chatRepository.dispose();
    return super.close();
  }
}
