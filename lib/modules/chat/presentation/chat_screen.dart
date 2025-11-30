import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/constant/avatar_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_entry.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/chat/presentation/bloc/chat_bloc.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat_input.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';
import 'package:tech_messenger/modules/avatar/presentation/avatar_widget.dart';

class ChatScreen extends StatefulWidget {
  final ChatEntry chatEntry;
  const ChatScreen({super.key, required this.chatEntry});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _messageController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  void dispose() {
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String title = '';
    ChatModel? chatData;
    UserModel? companionUser;
    widget.chatEntry.when(
      existing: (e) {
        final interlocutor = e.interlocutors.first;
        title = interlocutor.name;
        chatData = e;
        companionUser = UserModel(
          nickname: interlocutor.nickname,
          name: interlocutor.name,
        );
      },
      withUser: (e) {
        title = e.name;
        companionUser = e;
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
              Text(title, style: context.appTextTheme.heading1),
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
                child: BlocBuilder<ChatBloc, ChatState>(
                  builder: (context, state) {
                    state.maybeWhen(
                      loaded: (chats) {
                        WidgetsBinding.instance.addPostFrameCallback((_) {
                          _scrollController.jumpTo(
                            _scrollController.position.maxScrollExtent,
                          );
                        });
                      },
                      orElse: () {},
                    );
                    return CustomScrollView(
                      controller: _scrollController,
                      slivers: [
                        if (chatData != null)
                          Chat(chatData: chatData!)
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
                      // пока что просто очищаем поле, логика отправки позже
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
