import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/message/presentation/bloc/message_bloc.dart';
import 'package:tech_messenger/modules/user/data/user_local_storage/user_local_storage.dart';
import 'package:tech_messenger/modules/user/domain/model/user_model.dart';

class Message extends StatelessWidget {
  final MessageModel messageData;

  const Message({super.key, required this.messageData});

  @override
  Widget build(BuildContext context) {
    // return BlocBuilder<MessageBloc, MessageState>(
    // builder: (context, state) {
    return Align(
      alignment: messageData.author.nickname == "Ярослав"
          ? Alignment.centerRight
          : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.6,
          minWidth: p32,
        ),
        child: Container(
          margin: const EdgeInsets.only(
            left: p16,
            right: p16,
            top: p8,
            bottom: p8,
          ),
          padding: const EdgeInsets.all(p8),
          decoration: BoxDecoration(
            color: messageData.author.nickname == "Ярослав"
                ? context.appTheme.primaryColor
                : context.appColors.primaryColor700,
            borderRadius: BorderRadius.circular(p14),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                messageData.author.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: p14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: p4),
              Text(messageData.text, style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
    //   },
    // );
  }
}
