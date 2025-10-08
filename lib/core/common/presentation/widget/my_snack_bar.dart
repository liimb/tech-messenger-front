import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_defaults.dart';
import 'package:tech_messenger/core/constant/app_padding.dart';
import 'package:tech_messenger/core/util/extension/build_context_x.dart';

SnackBar getSnackBar(String message, BuildContext context) {
  return SnackBar(
    margin: EdgeInsets.all(p16),
    duration: const Duration(seconds: AppDefaults.snackBarDuration),
    action: SnackBarAction(
      label: context.l10n.ok,
      textColor: context.appColors.primaryColor700,
      onPressed: () {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
      },
    ),
    content: Text(
      message,
      style: context.appTextTheme.body3.copyWith(fontSize: 14),
    ),
  );
}
