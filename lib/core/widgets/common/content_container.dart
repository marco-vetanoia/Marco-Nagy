import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/responsive/app_breakpoints.dart';

/// Centres page content and caps its measure so long lines stay readable on a
/// wide desktop window. Horizontal padding leaves room for the vertical
/// section label rail.
class ContentContainer extends StatelessWidget {
  const ContentContainer({
    required this.child,
    this.maxWidth = 1240,
    this.verticalPadding,
    super.key,
  });

  final Widget child;
  final double maxWidth;
  final double? verticalPadding;

  @override
  Widget build(BuildContext context) {
    final horizontal = switch (context.screenKind) {
      ScreenKind.desktop => 80.w,
      ScreenKind.tablet => 56.w,
      ScreenKind.mobile => 24.w,
    };

    return Center(
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: maxWidth.w),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: horizontal,
            vertical: verticalPadding ?? 0,
          ),
          child: child,
        ),
      ),
    );
  }
}
