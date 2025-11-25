import 'package:flutter/material.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/message/presentation/widget/message.dart';

class Chat extends StatelessWidget {
  final ChatModel chatData;
  const Chat({super.key, required this.chatData});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: chatData.messages.length,
      itemBuilder: (context, i) {
        return Message(messageData: chatData.messages[i]);
      },
    );
  }
}
