import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    super.key,
    required this.onPressed,
    required this.text,
    required this.buttonText,
  });

  final VoidCallback onPressed;
  final String text;
  final String buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Flexible(
          child: AutoSizeText(
            text,
            overflow: TextOverflow.ellipsis,
            style: context.appTextTheme.button.copyWith(fontSize: 14),
          ),
        ),
        Flexible(
          child: TextButton(
            onPressed: onPressed,
            child: AutoSizeText(
              buttonText,
              overflow: TextOverflow.ellipsis,
              style: context.appTextTheme.button.copyWith(
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
