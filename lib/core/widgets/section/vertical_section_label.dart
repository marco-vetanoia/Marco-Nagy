import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';

/// The rotated section name pinned along the page's outer edge — the page
/// identity anchor that persists while the section scrolls.
///
/// It sits on the leading edge in both directions: left in LTR, right in RTL,
/// rotated so it always reads bottom-to-top.
class VerticalSectionLabel extends StatelessWidget {
  const VerticalSectionLabel({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return IgnorePointer(
      child: RotatedBox(
        quarterTurns: 3,
        child: Text(
          label.toUpperCase(),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: MyFonts.caps12.copyWith(
            color: context.colors.onNavyFaint.withValues(alpha: 0.7),
          ),
        ),
      ),
    );
  }
}

/// Positions a [VerticalSectionLabel] against the page's leading edge.
class VerticalSectionLabelRail extends StatelessWidget {
  const VerticalSectionLabelRail({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Positioned.directional(
      textDirection: Directionality.of(context),
      start: 16.w,
      top: 0,
      bottom: 0,
      child: Center(child: VerticalSectionLabel(label: label)),
    );
  }
}
