import 'package:flutter/material.dart';

import '../colors/navy_colors.dart';

/// Gradients for page grounds and decorative shapes. Read via `context.gradients`.
class AppGradientTheme extends ThemeExtension<AppGradientTheme> {
  const AppGradientTheme({
    required this.page,
    required this.heroGlow,
    required this.surfacePanel,
    required this.accentCta,
  });

  /// Diagonal deep-navy to brighter blue used as every page's ground.
  final LinearGradient page;

  /// Soft radial bloom behind the hero photo and the section-divider badges.
  final RadialGradient heroGlow;

  /// Slightly lifted panel fill so cards separate from the page ground.
  final LinearGradient surfacePanel;

  /// Reserved for interactive/CTA moments only.
  final LinearGradient accentCta;

  static const AppGradientTheme navy = AppGradientTheme(
    page: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        NavyColors.navyDeep,
        NavyColors.navyBase,
        NavyColors.navyLift,
      ],
      stops: <double>[0.0, 0.55, 1.0],
    ),
    heroGlow: RadialGradient(
      colors: <Color>[
        NavyColors.navyGlow,
        NavyColors.navyBase,
        NavyColors.transparent,
      ],
      stops: <double>[0.0, 0.6, 1.0],
    ),
    surfacePanel: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[NavyColors.surface, NavyColors.surfaceHigh],
    ),
    accentCta: LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: <Color>[NavyColors.accent, NavyColors.accentSoft],
    ),
  );

  @override
  ThemeExtension<AppGradientTheme> copyWith({
    LinearGradient? page,
    RadialGradient? heroGlow,
    LinearGradient? surfacePanel,
    LinearGradient? accentCta,
  }) {
    return AppGradientTheme(
      page: page ?? this.page,
      heroGlow: heroGlow ?? this.heroGlow,
      surfacePanel: surfacePanel ?? this.surfacePanel,
      accentCta: accentCta ?? this.accentCta,
    );
  }

  @override
  ThemeExtension<AppGradientTheme> lerp(
    covariant ThemeExtension<AppGradientTheme>? other,
    double t,
  ) {
    if (other is! AppGradientTheme) return this;
    return AppGradientTheme(
      page: LinearGradient.lerp(page, other.page, t)!,
      heroGlow: RadialGradient.lerp(heroGlow, other.heroGlow, t)!,
      surfacePanel: LinearGradient.lerp(surfacePanel, other.surfacePanel, t)!,
      accentCta: LinearGradient.lerp(accentCta, other.accentCta, t)!,
    );
  }
}
