import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle large;
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle button;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle body3;

  const AppTypography({
    required this.large,
    required this.heading1,
    required this.heading2,
    required this.button,
    required this.body1,
    required this.body2,
    required this.body3,
  });

  // Light typography
  static AppTypography get light {
    final baseTextStyle = GoogleFonts.actor();

    return AppTypography(
      large: baseTextStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w400,
        height: 1.2,
      ),
      heading1: baseTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      heading2: baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      button: baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      body1: baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
      body2: baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
      body3: baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
    );
  }

  // Dark typography
  static AppTypography get dark {
    final baseTextStyle = GoogleFonts.actor();

    return AppTypography(
      large: baseTextStyle.copyWith(
        fontSize: 30,
        fontWeight: FontWeight.w800,
        height: 1.2,
      ),
      heading1: baseTextStyle.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      heading2: baseTextStyle.copyWith(
        fontSize: 18,
        fontWeight: FontWeight.w600,
        height: 1.3,
      ),
      button: baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        height: 1.4,
        letterSpacing: 0.5,
      ),
      body1: baseTextStyle.copyWith(
        fontSize: 16,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
      body2: baseTextStyle.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
      body3: baseTextStyle.copyWith(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        height: 1.4,
      ),
    );
  }

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? large,
    TextStyle? heading1,
    TextStyle? heading2,
    TextStyle? button,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
  }) {
    return AppTypography(
      large: large ?? this.large,
      heading1: heading1 ?? this.heading1,
      heading2: heading2 ?? this.heading2,
      button: button ?? this.button,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
    ThemeExtension<AppTypography>? other,
    double t,
  ) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      large: TextStyle.lerp(large, other.large, t)!,
      heading1: TextStyle.lerp(heading1, other.heading1, t)!,
      heading2: TextStyle.lerp(heading2, other.heading2, t)!,
      button: TextStyle.lerp(button, other.button, t)!,
      body1: TextStyle.lerp(body1, other.body1, t)!,
      body2: TextStyle.lerp(body2, other.body2, t)!,
      body3: TextStyle.lerp(body3, other.body3, t)!,
    );
  }
}
