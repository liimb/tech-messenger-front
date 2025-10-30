import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class MessageInput extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const MessageInput({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: p14, vertical: p8),
        color: context.appTheme.primaryColor,
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: context.l10n.enterMessage,
                  hintStyle: TextStyle(color: Colors.white),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: p16,
                    vertical: p14,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(p32),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => onSend(),
              ),
            ),

            const SizedBox(width: p8),
            IconButton(
              icon: const Icon(Icons.send),
              color: Colors.white,
              onPressed: onSend,
            ),
          ],
        ),
      ),
    );
  }
}
