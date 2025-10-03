import 'package:flutter/material.dart';

@immutable
class AppPalette extends ThemeExtension<AppPalette> {
  final Color neutralColor0;
  final Color neutralColor100;
  final Color surfaceDim;
  final Color surfaceBright;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color surfaceContainerHigh;
  final Color surfaceContainerHighest;
  
  final Color primaryColor300;
  final Color primaryColor700;
  final Color primaryContainer;
  final Color onPrimary;
  final Color onPrimaryContainer;
  
  final Color secondaryColor100;
  final Color secondaryContainer;
  final Color onSecondary;
  final Color onSecondaryContainer;
  
  final Color tertiaryContainer;
  final Color onTertiary;
  final Color onTertiaryContainer;
  
  final Color textColor0;
  final Color textColor100;
  final Color onSurface;
  final Color onSurfaceVariant;
  
  final Color errorColor;
  final Color errorContainer;
  final Color onError;
  final Color onErrorContainer;
  
  final Color outline;
  final Color outlineVariant;
  
  const AppPalette({
    required this.neutralColor0,
    required this.neutralColor100,
    required this.surfaceDim,
    required this.surfaceBright,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.surfaceContainerHigh,
    required this.surfaceContainerHighest,
    required this.primaryColor300,
    required this.primaryColor700,
    required this.primaryContainer,
    required this.onPrimary,
    required this.onPrimaryContainer,
    required this.secondaryColor100,
    required this.secondaryContainer,
    required this.onSecondary,
    required this.onSecondaryContainer,
    required this.tertiaryContainer,
    required this.onTertiary,
    required this.onTertiaryContainer,
    required this.textColor0,
    required this.textColor100,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.errorColor,
    required this.errorContainer,
    required this.onError,
    required this.onErrorContainer,
    required this.outline,
    required this.outlineVariant,
  });

  @override
  ThemeExtension<AppPalette> copyWith({
    Color? neutralColor0,
    Color? neutralColor100,
    Color? surfaceDim,
    Color? surfaceBright,
    Color? surfaceContainerLowest,
    Color? surfaceContainerLow,
    Color? surfaceContainer,
    Color? surfaceContainerHigh,
    Color? surfaceContainerHighest,
    Color? primaryColor300,
    Color? primaryColor700,
    Color? primaryContainer,
    Color? onPrimary,
    Color? onPrimaryContainer,
    Color? secondaryColor100,
    Color? secondaryContainer,
    Color? onSecondary,
    Color? onSecondaryContainer,
    Color? tertiaryContainer,
    Color? onTertiary,
    Color? onTertiaryContainer,
    Color? textColor0,
    Color? textColor100,
    Color? onSurface,
    Color? onSurfaceVariant,
    Color? errorColor,
    Color? errorContainer,
    Color? onError,
    Color? onErrorContainer,
    Color? outline,
    Color? outlineVariant,
    Color? courseColor10,
  }) {
    return AppPalette(
      neutralColor0: neutralColor0 ?? this.neutralColor0,
      neutralColor100: neutralColor100 ?? this.neutralColor100,
      surfaceDim: surfaceDim ?? this.surfaceDim,
      surfaceBright: surfaceBright ?? this.surfaceBright,
      surfaceContainerLowest: surfaceContainerLowest ?? this.surfaceContainerLowest,
      surfaceContainerLow: surfaceContainerLow ?? this.surfaceContainerLow,
      surfaceContainer: surfaceContainer ?? this.surfaceContainer,
      surfaceContainerHigh: surfaceContainerHigh ?? this.surfaceContainerHigh,
      surfaceContainerHighest: surfaceContainerHighest ?? this.surfaceContainerHighest,
      primaryColor300: primaryColor300 ?? this.primaryColor300,
      primaryColor700: primaryColor700 ?? this.primaryColor700,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      onPrimaryContainer: onPrimaryContainer ?? this.onPrimaryContainer,
      secondaryColor100: secondaryColor100 ?? this.secondaryColor100,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondary: onSecondary ?? this.onSecondary,
      onSecondaryContainer: onSecondaryContainer ?? this.onSecondaryContainer,
      tertiaryContainer: tertiaryContainer ?? this.tertiaryContainer,
      onTertiary: onTertiary ?? this.onTertiary,
      onTertiaryContainer: onTertiaryContainer ?? this.onTertiaryContainer,
      textColor0: textColor0 ?? this.textColor0,
      textColor100: textColor100 ?? this.textColor100,
      onSurface: onSurface ?? this.onSurface,
      onSurfaceVariant: onSurfaceVariant ?? this.onSurfaceVariant,
      errorColor: errorColor ?? this.errorColor,
      errorContainer: errorContainer ?? this.errorContainer,
      onError: onError ?? this.onError,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      outline: outline ?? this.outline,
      outlineVariant: outlineVariant ?? this.outlineVariant,
    );
  }

  @override
  ThemeExtension<AppPalette> lerp(ThemeExtension<AppPalette>? other, double t) {
    if (other is! AppPalette) {
      return this;
    }
    return AppPalette(
      neutralColor0: Color.lerp(neutralColor0, other.neutralColor0, t)!,
      neutralColor100: Color.lerp(neutralColor100, other.neutralColor100, t)!,
      surfaceDim: Color.lerp(surfaceDim, other.surfaceDim, t)!,
      surfaceBright: Color.lerp(surfaceBright, other.surfaceBright, t)!,
      surfaceContainerLowest: Color.lerp(surfaceContainerLowest, other.surfaceContainerLowest, t)!,
      surfaceContainerLow: Color.lerp(surfaceContainerLow, other.surfaceContainerLow, t)!,
      surfaceContainer: Color.lerp(surfaceContainer, other.surfaceContainer, t)!,
      surfaceContainerHigh: Color.lerp(surfaceContainerHigh, other.surfaceContainerHigh, t)!,
      surfaceContainerHighest: Color.lerp(surfaceContainerHighest, other.surfaceContainerHighest, t)!,
      primaryColor300: Color.lerp(primaryColor300, other.primaryColor300, t)!,
      primaryColor700: Color.lerp(primaryColor700, other.primaryColor700, t)!,
      primaryContainer: Color.lerp(primaryContainer, other.primaryContainer, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      onPrimaryContainer: Color.lerp(onPrimaryContainer, other.onPrimaryContainer, t)!,
      secondaryColor100: Color.lerp(secondaryColor100, other.secondaryColor100, t)!,
      secondaryContainer: Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      onSecondaryContainer: Color.lerp(onSecondaryContainer, other.onSecondaryContainer, t)!,
      tertiaryContainer: Color.lerp(tertiaryContainer, other.tertiaryContainer, t)!,
      onTertiary: Color.lerp(onTertiary, other.onTertiary, t)!,
      onTertiaryContainer: Color.lerp(onTertiaryContainer, other.onTertiaryContainer, t)!,
      textColor0: Color.lerp(textColor0, other.textColor0, t)!,
      textColor100: Color.lerp(textColor100, other.textColor100, t)!,
      onSurface: Color.lerp(onSurface, other.onSurface, t)!,
      onSurfaceVariant: Color.lerp(onSurfaceVariant, other.onSurfaceVariant, t)!,
      errorColor: Color.lerp(errorColor, other.errorColor, t)!,
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t)!,
      onError: Color.lerp(onError, other.onError, t)!,
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t)!,
      outline: Color.lerp(outline, other.outline, t)!,
      outlineVariant: Color.lerp(outlineVariant, other.outlineVariant, t)!,
    );
  }
}
