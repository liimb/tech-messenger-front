import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_rounding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.isEnabled,
    required this.onPressed,
    required this.text,
  });

  final bool isEnabled;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isEnabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r20)),
      ),
      child: Center(child: Text(text, style: context.appTextTheme.button)),
    );
  }
}
