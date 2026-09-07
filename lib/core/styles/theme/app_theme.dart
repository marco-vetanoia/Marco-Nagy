import 'package:flutter/material.dart';

import '../colors/navy_colors.dart';
import '../fonts/my_fonts.dart';
import 'app_color_theme.dart';
import 'app_gradient_theme.dart';

/// The app ships a single navy theme — the palette is the brand, not a user
/// preference. Build it inside the ScreenUtilInit builder so `.sp` is resolved.
class AppTheme {
  const AppTheme._();

  static ThemeData navy() {
    const colors = AppColorTheme.navy;

    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colors.pageTop,
      canvasColor: colors.pageTop,
      colorScheme: const ColorScheme.dark(
        primary: NavyColors.accent,
        onPrimary: NavyColors.navyDeep,
        secondary: NavyColors.accentSoft,
        onSecondary: NavyColors.navyDeep,
        surface: NavyColors.surface,
        onSurface: NavyColors.white,
        error: NavyColors.danger,
        onError: NavyColors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: NavyColors.transparent,
        surfaceTintColor: NavyColors.transparent,
        elevation: 0,
        centerTitle: false,
      ),
      dividerTheme: const DividerThemeData(
        color: NavyColors.divider,
        thickness: 1,
        space: 1,
      ),
      iconTheme: const IconThemeData(color: NavyColors.white),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: NavyColors.accent,
        selectionHandleColor: NavyColors.accent,
      ),
      textTheme: TextTheme(
        displayLarge: MyFonts.display64,
        displayMedium: MyFonts.display48,
        displaySmall: MyFonts.display36,
        headlineMedium: MyFonts.bold28,
        headlineSmall: MyFonts.bold22,
        titleMedium: MyFonts.bold18,
        bodyLarge: MyFonts.regular16,
        bodyMedium: MyFonts.regular14,
        bodySmall: MyFonts.regular12,
        labelLarge: MyFonts.caps14,
      ).apply(bodyColor: colors.onNavy, displayColor: colors.onNavy),
      extensions: const <ThemeExtension<dynamic>>[
        AppColorTheme.navy,
        AppGradientTheme.navy,
      ],
    );
  }
}
