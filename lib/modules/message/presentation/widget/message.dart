import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/message/domain/model/message_model.dart';
import 'package:tech_messenger/modules/message/presentation/bloc/message_bloc.dart';
import 'package:tech_messenger/modules/user/domain/repository/user_repository_interface.dart';

class Message extends StatelessWidget {
  final MessageModel messageData;

  const Message({super.key, required this.messageData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessageBloc(
        messageData: messageData,
        userRepository: context.read<IUserRepository>(),
      ),
      child: BlocBuilder<MessageBloc, MessageState>(
        builder: (context, state) {
          return Align(
            alignment: state.isMine
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
                  color: state.isMine
                      ? context.appTheme.primaryColor
                      : context.appColors.primaryColor700,
                  borderRadius: BorderRadius.circular(p14),
                ),
                child: Column(
                  crossAxisAlignment: state.isMine
                      ? CrossAxisAlignment.end
                      : CrossAxisAlignment.start,
                  children: [
                    // Text(
                    //   messageData.author.name,
                    //   style: TextStyle(
                    //     color: context.appColors.textColor100,
                    //     fontSize: p14,
                    //     fontWeight: FontWeight.bold,
                    //   ),
                    // ),
                    // const SizedBox(height: p8),
                    Text(
                      messageData.messageText,
                      style: TextStyle(color: Colors.white),
                    ),
                    const SizedBox(height: p4),
                    Text(
                      "${messageData.sentTime.hour > 9 ? messageData.sentTime.hour : '0${messageData.sentTime.hour}'}:${messageData.sentTime.minute > 9 ? messageData.sentTime.minute : '0${messageData.sentTime.minute}'}",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
