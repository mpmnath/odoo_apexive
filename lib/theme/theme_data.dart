import 'package:flutter/material.dart';
import 'package:odoo_apexive/theme/palette.dart';
import 'package:odoo_apexive/theme/text_styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      colorScheme: ColorScheme.light(
        primary: ColorPalette.lightPrimary,
        onPrimary: ColorPalette.lightOnPrimary,
        primaryContainer: ColorPalette.lightPrimaryContainer,
        onPrimaryContainer: ColorPalette.lightOnPrimaryContainer,
        secondary: ColorPalette.lightSecondary,
        onSecondary: ColorPalette.lightOnSecondary,
        secondaryContainer: ColorPalette.lightSecondaryContainer,
        onSecondaryContainer: ColorPalette.lightOnSecondaryContainer,
        tertiary: ColorPalette.lightTertiary,
        onTertiary: ColorPalette.lightOnTertiary,
        tertiaryContainer: ColorPalette.lightTertiaryContainer,
        onTertiaryContainer: ColorPalette.lightOnTertiaryContainer,
        error: ColorPalette.lightError,
        onError: ColorPalette.lightOnerror,
        errorContainer: ColorPalette.lightErrorContainer,
        onErrorContainer: ColorPalette.lightOnErrorContainer,
        outline: ColorPalette.lightOutline,
        outlineVariant: ColorPalette.lightOutlinevariant,
        //background: ColorPalette.lightBackground,
        onBackground: ColorPalette.lightOnBackground,
        surface: ColorPalette.lightSurface.colors[0],
        onSurface: ColorPalette.lightOnSurface,
        surfaceVariant: ColorPalette.lightSurfaceVariant,
        onSurfaceVariant: ColorPalette.lightOnSurfaceVariant,
      ),
      textTheme: textTheme,
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark(
        primary: ColorPalette.darkPrimary,
        onPrimary: ColorPalette.darkOnPrimary,
        primaryContainer: ColorPalette.darkPrimaryContainer,
        onPrimaryContainer: ColorPalette.darkOnPrimaryContainer,
        secondary: ColorPalette.darkSecondary,
        onSecondary: ColorPalette.darkOnSecondary,
        secondaryContainer: ColorPalette.darkSecondaryContainer,
        onSecondaryContainer: ColorPalette.darkOnSecondaryContainer,
        tertiary: ColorPalette.darkTertiary,
        onTertiary: ColorPalette.darkOnTertiary,
        tertiaryContainer: ColorPalette.darkTertiaryContainer,
        onTertiaryContainer: ColorPalette.darkOnTertiaryContainer,
        error: ColorPalette.darkError,
        onError: ColorPalette.darkOnError,
        errorContainer: ColorPalette.darkErrorContainer,
        onErrorContainer: ColorPalette.darkOnErrorContainer,
        outline: ColorPalette.darkOutline,
        outlineVariant: ColorPalette.darkOutlinevariant,
        background: ColorPalette.darkBackground,
        onBackground: ColorPalette.darkOnBackground,
        surface: ColorPalette
            .darkSurface.colors[0], // Adjust according to your needs
        onSurface: ColorPalette.darkOnSurface,
        surfaceVariant: ColorPalette.darkSurfaceVariant,
        onSurfaceVariant: ColorPalette.darkOnSurfaceVariant,
      ),
      textTheme: textTheme,
    );
  }
}
