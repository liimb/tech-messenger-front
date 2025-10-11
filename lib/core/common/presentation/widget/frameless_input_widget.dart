import 'package:flutter/material.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/app_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class FramelessInputWidget extends StatelessWidget {
  const FramelessInputWidget({
    super.key,
    required this.controller,
    required this.focusNode,
    this.onChanged,
    this.onClear,
    this.hintText = 'Поиск',
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ValueListenableBuilder<TextEditingValue>(
            valueListenable: controller,
            builder: (context, value, _) {
              return TextFormField(
                controller: controller,
                focusNode: focusNode,
                autofocus: false,
                style: context.appTextTheme.heading2,
                onChanged: onChanged,
                textInputAction: TextInputAction.search,

                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: context.appTextTheme.heading2.copyWith(
                    color: context.appColors.secondaryColor100,
                  ),
                  suffixIcon: _buildSuffixIcon(context, value.text),
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(top: p16, bottom: p16),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon(BuildContext context, String text) {
    if (text.isNotEmpty) {
      return IconButton(
        //padding: const EdgeInsets.symmetric(vertical: p16),
        onPressed: () {
          controller.clear();
          onClear?.call();
          focusNode.requestFocus();
        },
        icon: const AppIcon(icon: Icons.clear, width: s24),
      );
    }
    return null;
  }
}
