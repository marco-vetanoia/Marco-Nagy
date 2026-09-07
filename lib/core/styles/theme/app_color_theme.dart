import 'package:flutter/material.dart';

import '../colors/navy_colors.dart';

/// Semantic colors for the whole app. Read via `context.colors`.
class AppColorTheme extends ThemeExtension<AppColorTheme> {
  const AppColorTheme({
    required this.pageTop,
    required this.pageBottom,
    required this.surface,
    required this.surfaceHigh,
    required this.divider,
    required this.accent,
    required this.accentSoft,
    required this.accentDim,
    required this.onNavy,
    required this.onNavyMuted,
    required this.onNavyFaint,
    required this.deviceBezel,
    required this.deviceBezelEdge,
    required this.deviceCamera,
    required this.deviceBase,
    required this.shadow,
    required this.danger,
    required this.success,
    required this.transparent,
  });

  final Color pageTop;
  final Color pageBottom;
  final Color surface;
  final Color surfaceHigh;
  final Color divider;
  final Color accent;
  final Color accentSoft;
  final Color accentDim;
  final Color onNavy;
  final Color onNavyMuted;
  final Color onNavyFaint;

  /// Device mockup chrome, used by the showcase frames.
  final Color deviceBezel;
  final Color deviceBezelEdge;
  final Color deviceCamera;
  final Color deviceBase;

  /// Cast shadows and the scrim laid over panel backgrounds.
  final Color shadow;

  final Color danger;
  final Color success;
  final Color transparent;

  static const AppColorTheme navy = AppColorTheme(
    pageTop: NavyColors.navyDeep,
    pageBottom: NavyColors.navyLift,
    surface: NavyColors.surface,
    surfaceHigh: NavyColors.surfaceHigh,
    divider: NavyColors.divider,
    accent: NavyColors.accent,
    accentSoft: NavyColors.accentSoft,
    accentDim: NavyColors.accentDim,
    onNavy: NavyColors.white,
    onNavyMuted: NavyColors.whiteMuted,
    onNavyFaint: NavyColors.whiteFaint,
    deviceBezel: NavyColors.deviceBezel,
    deviceBezelEdge: NavyColors.deviceBezelEdge,
    deviceCamera: NavyColors.deviceCamera,
    deviceBase: NavyColors.deviceBase,
    shadow: NavyColors.shadow,
    danger: NavyColors.danger,
    success: NavyColors.success,
    transparent: NavyColors.transparent,
  );

  @override
  ThemeExtension<AppColorTheme> copyWith({
    Color? pageTop,
    Color? pageBottom,
    Color? surface,
    Color? surfaceHigh,
    Color? divider,
    Color? accent,
    Color? accentSoft,
    Color? accentDim,
    Color? onNavy,
    Color? onNavyMuted,
    Color? onNavyFaint,
    Color? deviceBezel,
    Color? deviceBezelEdge,
    Color? deviceCamera,
    Color? deviceBase,
    Color? shadow,
    Color? danger,
    Color? success,
    Color? transparent,
  }) {
    return AppColorTheme(
      pageTop: pageTop ?? this.pageTop,
      pageBottom: pageBottom ?? this.pageBottom,
      surface: surface ?? this.surface,
      surfaceHigh: surfaceHigh ?? this.surfaceHigh,
      divider: divider ?? this.divider,
      accent: accent ?? this.accent,
      accentSoft: accentSoft ?? this.accentSoft,
      accentDim: accentDim ?? this.accentDim,
      onNavy: onNavy ?? this.onNavy,
      onNavyMuted: onNavyMuted ?? this.onNavyMuted,
      onNavyFaint: onNavyFaint ?? this.onNavyFaint,
      deviceBezel: deviceBezel ?? this.deviceBezel,
      deviceBezelEdge: deviceBezelEdge ?? this.deviceBezelEdge,
      deviceCamera: deviceCamera ?? this.deviceCamera,
      deviceBase: deviceBase ?? this.deviceBase,
      shadow: shadow ?? this.shadow,
      danger: danger ?? this.danger,
      success: success ?? this.success,
      transparent: transparent ?? this.transparent,
    );
  }

  @override
  ThemeExtension<AppColorTheme> lerp(
    covariant ThemeExtension<AppColorTheme>? other,
    double t,
  ) {
    if (other is! AppColorTheme) return this;
    return AppColorTheme(
      pageTop: Color.lerp(pageTop, other.pageTop, t)!,
      pageBottom: Color.lerp(pageBottom, other.pageBottom, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      surfaceHigh: Color.lerp(surfaceHigh, other.surfaceHigh, t)!,
      divider: Color.lerp(divider, other.divider, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      accentSoft: Color.lerp(accentSoft, other.accentSoft, t)!,
      accentDim: Color.lerp(accentDim, other.accentDim, t)!,
      onNavy: Color.lerp(onNavy, other.onNavy, t)!,
      onNavyMuted: Color.lerp(onNavyMuted, other.onNavyMuted, t)!,
      onNavyFaint: Color.lerp(onNavyFaint, other.onNavyFaint, t)!,
      deviceBezel: Color.lerp(deviceBezel, other.deviceBezel, t)!,
      deviceBezelEdge: Color.lerp(deviceBezelEdge, other.deviceBezelEdge, t)!,
      deviceCamera: Color.lerp(deviceCamera, other.deviceCamera, t)!,
      deviceBase: Color.lerp(deviceBase, other.deviceBase, t)!,
      shadow: Color.lerp(shadow, other.shadow, t)!,
      danger: Color.lerp(danger, other.danger, t)!,
      success: Color.lerp(success, other.success, t)!,
      transparent: Color.lerp(transparent, other.transparent, t)!,
    );
  }
}
