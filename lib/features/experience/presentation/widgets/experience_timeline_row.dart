import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/responsive/app_breakpoints.dart';
import '../../../../core/widgets/admin/admin_item_actions.dart';
import '../../../portfolio_content/presentation/view_data/timeline_row_data.dart';

/// One timeline entry: index and date range on the leading side, company, role
/// and triangle-marked achievements on the trailing side.
///
/// Consumes [TimelineRowData] rather than a `WorkHistoryEntry`, so a custom
/// `timeline` section reuses this widget unchanged.
class ExperienceTimelineRow extends StatelessWidget {
  const ExperienceTimelineRow({
    required this.data,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final TimelineRowData data;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    final leading = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(data.index, style: MyFonts.index20.copyWith(color: colors.accent)),
        SizedBox(height: 10.h),
        Text(
          data.dateRange,
          style: MyFonts.caps12.copyWith(color: colors.onNavyMuted),
        ),
        if (data.location.trim().isNotEmpty) ...<Widget>[
          SizedBox(height: 8.h),
          Text(
            data.location,
            style: MyFonts.regular12.copyWith(color: colors.onNavyFaint),
          ),
        ],
      ],
    );

    final trailing = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: Text(
                data.title,
                style: MyFonts.bold28.copyWith(color: colors.onNavy),
              ),
            ),
            AdminItemActions(onEdit: onEdit, onDelete: onDelete),
          ],
        ),
        if (data.subtitle.trim().isNotEmpty) ...<Widget>[
          SizedBox(height: 4.h),
          Text(
            data.subtitle,
            style: MyFonts.semi16.copyWith(color: colors.accent),
          ),
        ],
        SizedBox(height: 20.h),
        for (final bullet in data.bullets) _AchievementLine(text: bullet),
      ],
    );

    return Padding(
      padding: EdgeInsets.only(bottom: 56.h),
      child: context.isWide
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(width: 200.w, child: leading),
                SizedBox(width: 40.w),
                Expanded(child: trailing),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                leading,
                SizedBox(height: 20.h),
                trailing,
              ],
            ),
    );
  }
}

/// Achievement line with the small triangle marker used instead of a bullet.
class _AchievementLine extends StatelessWidget {
  const _AchievementLine({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: EdgeInsets.only(bottom: 12.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 5.h),
            child: Transform.scale(
              // Points along the reading direction in both languages.
              scaleX: context.isRtl ? -1 : 1,
              child: Icon(
                Icons.play_arrow_rounded,
                size: 14.r,
                color: colors.accent,
              ),
            ),
          ),
          SizedBox(width: 10.w),
          Expanded(
            child: Text(
              text,
              style: MyFonts.regular16.copyWith(color: colors.onNavyMuted),
            ),
          ),
        ],
      ),
    );
  }
}
