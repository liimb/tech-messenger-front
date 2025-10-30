import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/common/presentation/widget/frameless_input_widget.dart';
import 'package:tech_messenger/core/common/presentation/widget/input_widget.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/routing/app_routing.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat_model.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat.dart';
import 'package:tech_messenger/modules/chat/presentation/widget/chat_input.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class ChatScreen extends StatelessWidget {
  final UserModel userData;

  const ChatScreen({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        body: Stack(
          children: [
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  pinned: true,
                  backgroundColor: context.appTheme.primaryColor,
                  surfaceTintColor: Colors.transparent,
                  title: Row(
                    spacing: p14,
                    children: [
                      CircleAvatar(
                        backgroundColor: context.appColors.onPrimaryContainer,
                        foregroundColor: context.appColors.onPrimary,
                        child: AppIcon(icon: Icons.person),
                      ),
                      Text(userData.name, style: context.appTextTheme.heading1),
                    ],
                  ),
                  leading: Builder(
                    builder: (context) => IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color:
                            context.appTheme.appBarTheme.titleTextStyle?.color,
                      ),
                      onPressed: () => context.go(AppRoutes.home.routePath),
                    ),
                  ),
                ),
                //TODO сделать получение chatdata
                Chat(
                  chatData: ChatModel(
                    id: "1",
                    messages: [
                      MessageModel(
                        id: "10",
                        text: "Привет",
                        sendTime: DateTime.now(),
                        author: UserModel(nickname: "Ярослав", name: "Ярослав"),
                      ),
                      MessageModel(
                        id: "11",
                        text:
                            "Hello, how are you? I think that blablablablabla",
                        sendTime: DateTime.now(),
                        author: UserModel(nickname: "Smith", name: "John"),
                      ),
                      MessageModel(
                        id: "12",
                        text: "У меня все нормально, ты как?",
                        sendTime: DateTime.now(),
                        author: UserModel(nickname: "Ярослав", name: "Ярослав"),
                      ),
                    ],
                    user: userData,
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: MessageInput(
                controller: TextEditingController(),
                onSend: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
