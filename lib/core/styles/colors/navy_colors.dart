import 'dart:ui' show Color;

/// Raw palette. Never reference these directly from a widget — read them through
/// [AppColorTheme] / [AppGradientTheme] so the whole app has one source of truth.
class NavyColors {
  const NavyColors._();

  // Page grounds — deep navy to a brighter blue.
  static const Color navyDeep = Color(0xFF050B1B);
  static const Color navyBase = Color(0xFF0A1533);
  static const Color navyLift = Color(0xFF122350);
  static const Color navyGlow = Color(0xFF1B3F8F);

  // Panel / card surfaces: more saturated than the ground so they read as surfaces.
  static const Color surface = Color(0xFF0F1E45);
  static const Color surfaceHigh = Color(0xFF172C60);
  static const Color divider = Color(0xFF23345E);

  // Interactive accent — CTAs, ring outlines, hover reveals, admin affordances only.
  static const Color accent = Color(0xFF4CC9F0);
  static const Color accentSoft = Color(0xFF7BDCF7);
  static const Color accentDim = Color(0xFF2A6E8A);

  // Type.
  static const Color white = Color(0xFFF7F9FC);
  static const Color whiteMuted = Color(0xFFB9C4DC);
  static const Color whiteFaint = Color(0xFF7C8AAB);

  // Device mockup chrome — the bezels drawn around screenshots. Darker and
  // less saturated than the page surfaces so a frame reads as hardware
  // sitting on the panel, not as another panel.
  static const Color deviceBezel = Color(0xFF11151C);
  static const Color deviceBezelEdge = Color(0xFF2B3240);
  static const Color deviceCamera = Color(0xFF05070B);
  static const Color deviceBase = Color(0xFF20262F);

  /// Cast shadows and scrims.
  static const Color shadow = Color(0xFF000000);

  static const Color danger = Color(0xFFFF6B6B);
  static const Color success = Color(0xFF3DDC97);
  static const Color transparent = Color(0x00000000);

  // Per-project hover accents (Projects list rows).
  static const Color projectPink = Color(0xFFFF6FA5);
  static const Color projectGreen = Color(0xFF3DDC97);
  static const Color projectAmber = Color(0xFFFFB020);
}
