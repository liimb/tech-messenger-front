import 'package:flutter/material.dart';
import 'package:tech_messenger/core/common/presentation/widget/app_icon.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/constant/app_rounding.dart';
import 'package:tech_messenger/core/constant/app_size.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
    required this.controller,
    this.validator,
    this.hintText = '',
    this.onChanged,
    this.onClear,
    this.isSearchInput = false,
    this.enabled = true,
    this.obscureText = false,
    this.isOutlined = false,
    this.keyboardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.labelText = '',
  });

  final FormFieldValidator<String>? validator;
  final TextEditingController controller;
  final String hintText;
  final String labelText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onClear;
  final bool isSearchInput;
  final bool enabled;
  final bool obscureText; // если true — показываем глазик
  final bool isOutlined;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;

  @override
  Widget build(BuildContext context) {
    final obscureNotifier = ValueNotifier<bool>(obscureText);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText.isNotEmpty) ...[
          Text(labelText, style: context.appTextTheme.body1),
          const SizedBox(height: p4),
        ],
        ValueListenableBuilder<bool>(
          valueListenable: obscureNotifier,
          builder: (context, isObscured, _) {
            return TextFormField(
              controller: controller,
              enabled: enabled,
              obscureText: isObscured,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              style: isSearchInput
                  ? context.appTextTheme.body1
                  : context.appTextTheme.heading2,
              validator: validator,
              cursorColor: context.appColors.textColor0,
              onChanged: onChanged,
              obscuringCharacter: '●',
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: context.appTextTheme.heading2.copyWith(
                  color: context.appColors.secondaryColor100,
                ),
                fillColor: context.appColors.neutralColor100,
                filled: true,
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: context.appColors.errorColor),
                  borderRadius: BorderRadius.circular(r40),
                ),
                contentPadding: EdgeInsets.all(p16),
                suffixIcon: _buildSuffixIcon(
                  context,
                  obscureNotifier,
                  isObscured,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(r20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: context.appColors.primaryColor700,
                  ),
                  borderRadius: BorderRadius.circular(r20),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: context.appColors.primaryColor300,
                  ),
                  borderRadius: BorderRadius.circular(r20),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  Widget? _buildSuffixIcon(
    BuildContext context,
    ValueNotifier<bool> notifier,
    bool isObscured,
  ) {
    // Если это поле для поиска
    if (isSearchInput && controller.text.trim().isNotEmpty) {
      return IconButton(
        padding: EdgeInsets.symmetric(horizontal: p16, vertical: p14),
        onPressed: () {
          controller.clear();
          onClear?.call();
        },
        icon: const AppIcon(icon: Icons.clear, width: s24),
      );
    }
    if (isSearchInput) {
      return const Padding(
        padding: EdgeInsets.symmetric(horizontal: p16, vertical: p14),
        child: AppIcon(icon: Icons.search, width: s24),
      );
    }

    // Если нужно показать глазик для пароля
    if (obscureText) {
      return IconButton(
        padding: EdgeInsets.symmetric(horizontal: p16, vertical: p14),
        onPressed: () {
          notifier.value = !isObscured;
        },
        icon: AppIcon(
          icon: isObscured ? Icons.visibility : Icons.visibility_off,
          width: s24,
          color: context.appColors.secondaryColor100,
        ),
      );
    }

    return null;
  }
}
