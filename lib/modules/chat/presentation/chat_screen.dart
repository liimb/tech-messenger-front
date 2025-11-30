import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_entry.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/domain/model/create/chat_create_model.dart';
import 'package:tech_messenger/modules/chat/presentation/bloc/chat_bloc.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat_input.dart';
import 'package:tech_messenger/modules/message/domain/model/send_message/message_send_model.dart';
import 'package:tech_messenger/modules/message/presentation/bloc/message_bloc.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';
import 'package:tech_messenger/modules/user/presentation/bloc/user_bloc.dart';

class ChatScreen extends StatefulWidget {
  final ChatEntry chatEntry;
  const ChatScreen({super.key, required this.chatEntry});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  String? _companionId;
  String? _companionNickname;
  ChatBloc? _chatBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _chatBloc ??= context.read<ChatBloc>();
  }

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final chatBloc = _chatBloc ?? context.read<ChatBloc>();
      chatBloc.add(const ChatStartedEvent());

      widget.chatEntry.when(
        existing: (e) {
          chatBloc.add(ChatSelectEvent(e.id));
          final myUser = context.read<UserBloc>().state.whenOrNull(
            loaded: (user) => user,
          );
          final interlocutor = e.interlocutors.firstWhere(
            (i) => i.nickname != (myUser?.nickname ?? ''),
            orElse: () => e.interlocutors.first,
          );
          _companionNickname = interlocutor.nickname;
        },
        withUser: (u) {
          _companionId = (u as dynamic).id as String?;
          _companionNickname =
              (u as dynamic).nickname as String? ??
              (u as dynamic).name as String?;
          Future.microtask(() async {
            if (!mounted) return;
            final myUser = context.read<UserBloc>().state.whenOrNull(
              loaded: (user) => user,
            );
            if (myUser == null || _companionId == null) return;

            final createModel = ChatCreateModel(
              userIdOne: myUser.id ?? "",
              userIdTwo: _companionId!,
            );

            (_chatBloc ?? context.read<ChatBloc>()).add(
              ChatCreateEvent(createModel),
            );
          });
        },
      );
    });
  }

  @override
  void dispose() {
    _chatBloc?.add(const ChatEvent.clearSelection());
    _messageController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  String? _selectedChatIdFromState(ChatState state) {
    return state.maybeWhen(
      loaded: (chats, selectedChatId) => selectedChatId,
      orElse: () => null,
    );
  }

  ChatModel? _chatModelFromState(ChatState state) {
    return state.maybeWhen(
      loaded: (chats, selectedChatId) {
        if (selectedChatId != null) {
          try {
            return chats.firstWhere((c) => c.id == selectedChatId);
          } catch (_) {
            return null;
          }
        }
        return null;
      },
      orElse: () => null,
    );
  }

  @override
  Widget build(BuildContext context) {
    UserModel? companionUser;

    final myUser = context.read<UserBloc>().state.whenOrNull(
      loaded: (user) => user,
    );

    widget.chatEntry.when(
      existing: (e) {
        final interlocutor = e.interlocutors.firstWhere(
          (i) => i.nickname != (myUser?.nickname ?? ''),
          orElse: () => e.interlocutors.first,
        );
        companionUser = UserModel(
          nickname: interlocutor.nickname,
          name: interlocutor.name,
          avatar: interlocutor.avatar,
        );
      },
      withUser: (u) {
        companionUser = UserModel(
          nickname: u.nickname,
          name: u.name,
          avatar: u.avatar,
        );
      },
    );

    return SafeArea(
      top: false,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              if (companionUser != null)
                UserAvatarWidget(
                  userData: companionUser!,
                  avatarSize: AvatarSize.small,
                ),
              const SizedBox(width: 12),
              Text(
                companionUser?.name ?? '',
                style: context.appTextTheme.heading1,
              ),
            ],
          ),
          leading: BackButton(
            onPressed: () => context.pop(),
            color: context.appTheme.appBarTheme.titleTextStyle?.color,
          ),
        ),
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: BlocConsumer<ChatBloc, ChatState>(
                  listenWhen: (prev, cur) {
                    final prevSel = prev.maybeWhen(
                      loaded: (chats, s) => s,
                      orElse: () => null,
                    );
                    final curSel = cur.maybeWhen(
                      loaded: (chats, s) => s,
                      orElse: () => null,
                    );
                    return prevSel != curSel || prev != cur;
                  },
                  listener: (context, state) {
                    WidgetsBinding.instance.addPostFrameCallback((_) {
                      if (_scrollController.hasClients) {
                        _scrollController.jumpTo(
                          _scrollController.position.maxScrollExtent,
                        );
                      }
                    });
                  },
                  builder: (context, state) {
                    final chatData = _chatModelFromState(state);

                    return CustomScrollView(
                      controller: _scrollController,
                      slivers: [
                        if (chatData != null)
                          Chat(chatData: chatData)
                        else
                          SliverFillRemaining(
                            child: Center(
                              child: Text(
                                'Начните переписку с ${companionUser?.name ?? ''}',
                                style: context.appTextTheme.body1,
                              ),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SafeArea(
                  child: MessageInput(
                    controller: _messageController,
                    onSend: () {
                      final text = _messageController.text.trim();
                      if (text.isEmpty) return;

                      final state = context.read<ChatBloc>().state;
                      final currentChatId = _selectedChatIdFromState(state);
                      if (currentChatId == null) return;

                      final senderName = myUser?.nickname ?? 'me';

                      context.read<MessageBloc>().add(
                        MessageSendEvent(
                          MessageSendModel(
                            chatId: currentChatId,
                            senderName: senderName,
                            messageText: text,
                          ),
                        ),
                      );

                      _messageController.clear();
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
