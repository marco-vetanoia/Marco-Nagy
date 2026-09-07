import 'package:flutter/widgets.dart';

import 'app_breakpoints.dart';

/// One adaptive screen per feature — pick the layout by [ScreenKind] rather
/// than writing separate mobile/web screens.
class ResponsiveBuilder extends StatelessWidget {
  const ResponsiveBuilder({
    required this.mobile,
    this.tablet,
    this.desktop,
    super.key,
  });

  final WidgetBuilder mobile;
  final WidgetBuilder? tablet;
  final WidgetBuilder? desktop;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return switch (AppBreakpoints.kindOf(constraints.maxWidth)) {
          ScreenKind.desktop => (desktop ?? tablet ?? mobile)(context),
          ScreenKind.tablet => (tablet ?? mobile)(context),
          ScreenKind.mobile => mobile(context),
        };
      },
    );
  }
}
