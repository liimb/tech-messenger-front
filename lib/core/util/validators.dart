import 'package:flutter/widgets.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

abstract class AppValidators {
  // static String? validatorEmail(String? value, BuildContext context) {
  //   if (value == null || value == '') {
  //     return context.l10n.fieldMustNotEmpty;
  //   }
  //   final email = value.trim();
  //   final emailRegex = RegExp(r'^[^@\s]+@[^@\s]+\.[^@\s]+$');
  //   if (!emailRegex.hasMatch(email)) {
  //     return context.l10n.errorInvalidEmail;
  //   }

  //   return null;
  // }

  static String? matchPasswordValidator(
    String? value,
    BuildContext context,
    TextEditingController firstPasswordController,
  ) {
    if (value == null || value == '') {
      return context.l10n.fieldMustNotEmpty;
    }
    if (value != firstPasswordController.text) {
      return context.l10n.errorPasswordsDoNotMatch;
    }
    return null;
  }

  static String? correctPasswordValidator(String? value, BuildContext context) {
    if (value == null || value == '') {
      return context.l10n.fieldMustNotEmpty;
    }
    if (value.length < 8 ||
        !value.contains(
          RegExp(r'^(?=.*[A-ZА-ЯЁ])(?=.*[0-9])(?=.*[^A-Za-zА-Яа-яЁё0-9]).+$'),
        )) {
      return context.l10n.errorUncorrectPassword;
    }
    return null;
  }

  static String? correctNicknameValidator(String? value, BuildContext context) {
    if (value == null || value == '') {
      return context.l10n.fieldMustNotEmpty;
    }
    if (value.length < 3) {
      return context.l10n.errorUncorrectNickname;
    }
    return null;
  }

  static String? correctNameValidator(String? value, BuildContext context) {
    if (value == null || value == '') {
      return context.l10n.fieldMustNotEmpty;
    }
    return null;
  }

  // static String? validatorPhone(String? value, BuildContext context) {
  //   {
  //     if (value == null || value.trim().isEmpty) {
  //       return context.l10n.phoneFieldMustNotEmpty;
  //     }
  //     final phone = value.trim();
  //     final phoneReg = RegExp(r'^\+?[0-9]{10,15}$');
  //     if (!phoneReg.hasMatch(phone)) {
  //       return context.l10n.enterCorrectPhone;
  //     }

  //     return null;
  //   }
  // }
}
