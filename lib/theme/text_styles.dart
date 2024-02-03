import 'package:flutter/material.dart';

TextTheme textTheme = TextTheme(
  displayLarge: const TextStyles().displayLarge,
  displayMedium: const TextStyles().displayMedium,
  displaySmall: const TextStyles().displaySmall,
  headlineLarge: const TextStyles().headlineLarge,
  headlineMedium: const TextStyles().headlineMedium,
  headlineSmall: const TextStyles().headlineSmall,
  titleLarge: const TextStyles().titleLarge,
  titleMedium: const TextStyles().titleMedium,
  titleSmall: const TextStyles().titleSmall,
  bodyLarge: const TextStyles().bodyLarge,
  bodyMedium: const TextStyles().bodyMedium,
  bodySmall: const TextStyles().bodySmall,
  labelLarge: const TextStyles().labelLarge,
  labelMedium: const TextStyles().labelMedium,
  labelSmall: const TextStyles().labelSmall,
);

class TextStyles {
  const TextStyles();

  TextStyle get displayLarge => const TextStyle(
        fontSize: 57,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Semi Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 64 / 57,
        letterSpacing: 0,
      );

  TextStyle get displayMedium => const TextStyle(
        fontSize: 45,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 52 / 45,
        letterSpacing: 0,
      );

  TextStyle get displaySmall => const TextStyle(
        fontSize: 36,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Semi Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 44 / 36,
        letterSpacing: 0,
      );

  TextStyle get headlineLarge => const TextStyle(
        fontSize: 32,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 40 / 32,
        letterSpacing: 0,
      );

  TextStyle get headlineMedium => const TextStyle(
        fontSize: 28,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 36 / 28,
        letterSpacing: 0,
      );

  TextStyle get headlineSmall => const TextStyle(
        fontSize: 24,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 32 / 24,
        letterSpacing: 0,
      );

  TextStyle get titleLarge => const TextStyle(
        fontSize: 22,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Semi Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 28 / 22,
        letterSpacing: 0,
      );

  TextStyle get titleMedium => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Semi Bold',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w700,
        height: 24 / 16,
        letterSpacing: 0.15,
      );

  TextStyle get titleSmall => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0.1,
      );

  TextStyle get labelLarge => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0.1,
      );

  TextStyle get labelMedium => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        letterSpacing: 0.5,
      );

  TextStyle get labelSmall => const TextStyle(
        fontSize: 11,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        letterSpacing: 0.5,
      );

  TextStyle get bodyLarge => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0.5,
      );

  TextStyle get bodyMedium => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        letterSpacing: 0.25,
      );

  TextStyle get bodySmall => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Inter-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        letterSpacing: 0.4,
      );

  TextStyle get materialthemedisplaylarge => const TextStyle(
        fontSize: 57,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 64 / 57,
        letterSpacing: 0,
      );

  TextStyle get materialthemedisplaymedium => const TextStyle(
        fontSize: 45,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 52 / 45,
        letterSpacing: 0,
      );

  TextStyle get materialthemedisplaysmall => const TextStyle(
        fontSize: 36,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 44 / 36,
        letterSpacing: 0,
      );

  TextStyle get materialthemeheadlinelarge => const TextStyle(
        fontSize: 32,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 40 / 32,
        letterSpacing: 0,
      );

  TextStyle get materialthemeheadlinemedium => const TextStyle(
        fontSize: 28,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 36 / 28,
        letterSpacing: 0,
      );

  TextStyle get materialthemeheadlinesmall => const TextStyle(
        fontSize: 24,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 32 / 24,
        letterSpacing: 0,
      );

  TextStyle get materialthemetitlelarge => const TextStyle(
        fontSize: 22,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 28 / 22,
        letterSpacing: 0,
      );

  TextStyle get materialthemetitlemedium => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 24 / 16,
        letterSpacing: 0,
      );

  TextStyle get materialthemetitlesmall => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0,
      );

  TextStyle get materialthemebodylarge => const TextStyle(
        fontSize: 16,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 24 / 16,
        letterSpacing: 0,
      );

  TextStyle get materialthemebodymedium => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 20 / 14,
        letterSpacing: 0,
      );

  TextStyle get materialthemebodysmall => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Regular',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w400,
        height: 16 / 12,
        letterSpacing: 0,
      );

  TextStyle get materialthemelabellarge => const TextStyle(
        fontSize: 14,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 20 / 14,
        letterSpacing: 0,
      );

  TextStyle get materialthemelabelmedium => const TextStyle(
        fontSize: 12,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 12,
        letterSpacing: 0,
      );

  TextStyle get materialthemelabelsmall => const TextStyle(
        fontSize: 11,
        decoration: TextDecoration.none,
        fontFamily: 'Roboto-Medium',
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w500,
        height: 16 / 11,
        letterSpacing: 0,
      );
}
