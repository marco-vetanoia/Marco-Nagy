import 'package:flutter/widgets.dart';

/// One breakpoint scale for the whole app.
enum ScreenKind { mobile, tablet, desktop }

class AppBreakpoints {
  const AppBreakpoints._();

  static const double tablet = 760;
  static const double desktop = 1180;

  /// ScreenUtil design sizes — a phone canvas on mobile, a laptop canvas on
  /// desktop, so `.w`/`.sp` stay near 1:1 instead of amplifying on wide windows.
  static const Size mobileDesign = Size(390, 844);
  static const Size tabletDesign = Size(834, 1112);
  static const Size desktopDesign = Size(1440, 900);

  static ScreenKind kindOf(double width) {
    if (width >= desktop) return ScreenKind.desktop;
    if (width >= tablet) return ScreenKind.tablet;
    return ScreenKind.mobile;
  }

  static Size designSizeOf(double width) => switch (kindOf(width)) {
    ScreenKind.desktop => desktopDesign,
    ScreenKind.tablet => tabletDesign,
    ScreenKind.mobile => mobileDesign,
  };
}

extension ScreenKindContext on BuildContext {
  ScreenKind get screenKind =>
      AppBreakpoints.kindOf(MediaQuery.sizeOf(this).width);
  bool get isMobile => screenKind == ScreenKind.mobile;
  bool get isTablet => screenKind == ScreenKind.tablet;
  bool get isDesktop => screenKind == ScreenKind.desktop;

  /// Wide layouts (two-column timelines, side-by-side About) start at tablet.
  bool get isWide => screenKind != ScreenKind.mobile;
}
