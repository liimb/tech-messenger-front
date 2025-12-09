import 'package:flutter/material.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';
import 'package:tech_messenger/modules/message/domain/model/message/message_model.dart';

class Message extends StatelessWidget {
  final MessageModel messageData;
  final bool isMine;

  const Message({super.key, required this.messageData, required this.isMine});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMine ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.6,
          minWidth: 32,
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isMine
                ? context.appTheme.primaryColor
                : context.appColors.primaryColor700,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Column(
            crossAxisAlignment: isMine
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Text(
                messageData.messageText,
                style: const TextStyle(color: Colors.white),
              ),
              const SizedBox(height: 4),
              Text(
                _formatTime(messageData.sentTime),
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _formatTime(DateTime t) {
    final h = t.hour.toString().padLeft(2, '0');
    final m = t.minute.toString().padLeft(2, '0');
    return "$h:$m";
  }
}
