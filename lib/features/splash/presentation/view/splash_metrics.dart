/// Measurements for the Flutter splash mark.
///
/// The mark is drawn on mobile and desktop only — on web `index.html` shows its
/// own loader and this screen contributes just the reveal, so the two never
/// need to agree on a measure.
class SplashMetrics {
  const SplashMetrics._();

  /// Gap between the name and the rule beneath it.
  static const double markGap = 18;

  /// Rule measure. Fixed rather than a fraction of the viewport, so it reads
  /// as a progress bar at any screen size.
  static const double ruleWidth = 240;
  static const double ruleHeight = 2;

  /// Fraction of [Motion.introFill] the name takes to fade in.
  static const double nameFadeFraction = 0.35;

  /// Opacity of the unfilled part of the rule.
  static const double ruleTrackOpacity = 0.15;
}
