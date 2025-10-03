import 'package:flutter/material.dart';
import 'package:tech_messenger/core/theme/theme_x/app_palette.dart';
import 'package:tech_messenger/core/theme/theme_x/app_typography.dart';
import 'package:tech_messenger/l10n/app_localizations.dart';

extension BuildContextX on BuildContext {
  ThemeData get appTheme => Theme.of(this);

  AppPalette get appColors => Theme.of(this).extension<AppPalette>()!;

  AppTypography get appTextTheme => Theme.of(this).extension<AppTypography>()!;

  AppLocalizations get l10n => AppLocalizations.of(this)!;
}
