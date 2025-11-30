import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/modules/chat/domain/model/chat/chat_model.dart';
import 'package:tech_messenger/modules/message/presentation/bloc/message_bloc.dart';
import 'package:tech_messenger/modules/message/presentation/widget/message.dart';

class Chat extends StatelessWidget {
  final ChatModel chatData;
  const Chat({super.key, required this.chatData});

  @override
  Widget build(BuildContext context) {
    final myNickname = context.select<MessageBloc, String?>(
      (bloc) => bloc.state.myNickname,
    );

    return SliverList(
      delegate: SliverChildBuilderDelegate((context, i) {
        final msg = chatData.messages[i];
        final isMine = myNickname != null && myNickname == msg.senderName;

        return Message(messageData: msg, isMine: isMine);
      }, childCount: chatData.messages.length),
    );
  }
}
