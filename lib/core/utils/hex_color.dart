import 'dart:ui' show Color;

/// Accent colors are stored as 6-digit RRGGBB strings so they survive JSON and
/// stay editable as plain text in the admin forms.
class HexColor {
  const HexColor._();

  /// Parses `RRGGBB` or `#RRGGBB` (and the 8-digit AARRGGBB form).
  /// Returns [fallback] for anything unparseable rather than throwing — the
  /// value comes from a hand-typed admin field.
  static Color parse(String hex, Color fallback) {
    var value = hex.trim().replaceFirst('#', '');
    if (value.length == 6) value = 'FF$value';
    if (value.length != 8) return fallback;
    final parsed = int.tryParse(value, radix: 16);
    return parsed == null ? fallback : Color(parsed);
  }

  static String toHex(Color color) {
    final argb = color.toARGB32();
    return (argb & 0xFFFFFF).toRadixString(16).padLeft(6, '0').toUpperCase();
  }
}
