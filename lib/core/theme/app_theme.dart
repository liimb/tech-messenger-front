import 'package:flutter/material.dart';
import 'package:tech_messenger/core/constant/app_rounding.dart';
import 'package:tech_messenger/core/constant/dark_colors.dart';
import 'package:tech_messenger/core/constant/light_colors.dart';
import 'package:tech_messenger/core/theme/theme_x/app_typography.dart';

class AppTheme {
  // Light Theme
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Color(0xff8f4c38),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffffdbd1),
      onPrimaryContainer: Color(0xff723523),
      secondary: Color(0xff77574e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffffdbd1),
      onSecondaryContainer: Color(0xff5d4037),
      tertiary: Color(0xff6c5d2f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xfff5e1a7),
      onTertiaryContainer: Color(0xff534619),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfffff8f6),
      onSurface: Color(0xff231917),
      surfaceContainerHighest: Color(0xfff7e4e0),
      onSurfaceVariant: Color(0xff53433f),
      outline: Color(0xff85736e),
      outlineVariant: Color(0xffd8c2bc),
    ),
    extensions: <ThemeExtension<dynamic>>[lightColors, AppTypography.light],
    scaffoldBackgroundColor: lightColors.neutralColor100,
    snackBarTheme: SnackBarThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r10)),
      behavior: SnackBarBehavior.floating,
      backgroundColor: lightColors.neutralColor100,
      contentTextStyle: const TextStyle(color: Color(0xff231917)),
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: lightColors.primaryColor700),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: lightColors.neutralColor100,
      foregroundColor: lightColors.textColor0,
      elevation: 0,
      scrolledUnderElevation: 2,
      titleTextStyle: AppTypography.light.heading1.copyWith(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r12)),
      color: lightColors.surfaceContainerLow,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: Color.fromARGB(255, 255, 255, 255)),
      ),
      labelStyle: AppTypography.light.body2.copyWith(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
      hintStyle: AppTypography.light.body2.copyWith(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: lightColors.primaryColor700,
        foregroundColor: lightColors.onPrimary,
        textStyle: AppTypography.light.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: lightColors.primaryColor700,
        textStyle: AppTypography.light.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: lightColors.primaryColor700,
        textStyle: AppTypography.light.button,
        side: BorderSide(color: lightColors.primaryColor700),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: AppTypography.light.large,
      displayMedium: AppTypography.light.heading1,
      displaySmall: AppTypography.light.heading2,
      bodyLarge: AppTypography.light.body1,
      bodyMedium: AppTypography.light.body2,
      bodySmall: AppTypography.light.body3,
      labelLarge: AppTypography.light.button,
    ),
  );

  // Dark Theme
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Color(0xffffb5a0),
      onPrimary: Color.fromARGB(255, 255, 255, 255),
      primaryContainer: Color(0xff723523),
      onPrimaryContainer: Color(0xffffdbd1),
      secondary: Color(0xffe7bdb2),
      onSecondary: Color(0xff442a22),
      secondaryContainer: Color(0xff5d4037),
      onSecondaryContainer: Color(0xffffdbd1),
      tertiary: Color(0xffd8c58d),
      onTertiary: Color(0xff3b2f05),
      tertiaryContainer: Color(0xff534619),
      onTertiaryContainer: Color(0xfff5e1a7),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff1a110f),
      onSurface: Color(0xfff1dfda),
      surfaceContainerHighest: Color(0xff271d1b),
      onSurfaceVariant: Color(0xffd8c2bc),
      outline: Color(0xffa08c87),
      outlineVariant: Color(0xff53433f),
    ),
    extensions: <ThemeExtension<dynamic>>[darkColors, AppTypography.dark],
    scaffoldBackgroundColor: darkColors.neutralColor100,
    snackBarTheme: SnackBarThemeData(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r10)),
      behavior: SnackBarBehavior.floating,
      backgroundColor: darkColors.surfaceContainer,
      contentTextStyle: const TextStyle(color: Color(0xfff1dfda)),
    ),
    checkboxTheme: CheckboxThemeData(
      side: BorderSide(color: darkColors.primaryColor300),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: darkColors.neutralColor100,
      foregroundColor: darkColors.textColor0,
      elevation: 0,
      scrolledUnderElevation: 2,
      titleTextStyle: AppTypography.dark.heading1.copyWith(
        color: Color.fromARGB(255, 255, 255, 255),
      ),
    ),
    cardTheme: CardThemeData(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r12)),
      color: darkColors.surfaceContainer,
    ),
    inputDecorationTheme: InputDecorationTheme(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: darkColors.outline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: darkColors.outlineVariant),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(r8),
        borderSide: BorderSide(color: darkColors.primaryColor300),
      ),
      labelStyle: AppTypography.dark.body2.copyWith(
        color: darkColors.onSurfaceVariant,
      ),
      hintStyle: AppTypography.dark.body2.copyWith(
        color: darkColors.onSurfaceVariant,
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: darkColors.primaryColor300,
        foregroundColor: darkColors.onPrimary,
        textStyle: AppTypography.dark.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: darkColors.primaryColor300,
        textStyle: AppTypography.dark.button,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: darkColors.primaryColor300,
        textStyle: AppTypography.dark.button,
        side: BorderSide(color: darkColors.primaryColor300),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(r8)),
      ),
    ),
    textTheme: TextTheme(
      displayLarge: AppTypography.dark.large,
      displayMedium: AppTypography.dark.heading1,
      displaySmall: AppTypography.dark.heading2,
      bodyLarge: AppTypography.dark.body1,
      bodyMedium: AppTypography.dark.body2,
      bodySmall: AppTypography.dark.body3,
      labelLarge: AppTypography.dark.button,
    ),
  );
}
