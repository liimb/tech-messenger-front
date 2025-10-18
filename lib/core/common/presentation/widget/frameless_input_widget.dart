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
    this.onSubmitted,
    this.hintText = 'Поиск',
  });

  final FocusNode focusNode;
  final TextEditingController controller;
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final Function(String)? onSubmitted;

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
                style: context.appTextTheme.heading2.copyWith(
                  //FIXME: заменить на цвет из appColors
                  color: Colors.white,
                ),
                onChanged: onChanged,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: onSubmitted,
                decoration: InputDecoration(
                  hintText: hintText,
                  hintStyle: context.appTextTheme.heading2.copyWith(
                    //FIXME: заменить на цвет из appColors
                    color: Colors.white,
                  ),
                  suffixIcon: _buildSuffixIcon(
                    context,
                    value.text,
                    //FIXME: заменить на цвет из appColors
                    Colors.white,
                  ),
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

  Widget? _buildSuffixIcon(BuildContext context, String text, Color color) {
    if (text.isNotEmpty) {
      return IconButton(
        //padding: const EdgeInsets.symmetric(vertical: p16),
        onPressed: () {
          controller.clear();
          onClear?.call();
          focusNode.requestFocus();
        },
        icon: AppIcon(icon: Icons.clear, width: s24, color: color),
      );
    }
    return null;
  }
}
