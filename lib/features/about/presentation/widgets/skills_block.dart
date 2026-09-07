import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/skill_groups.dart';
import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';

/// Grouped skill chips, rendered below the About columns as a secondary block.
class SkillsBlock extends StatelessWidget {
  const SkillsBlock({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          context.translate(LangKeys.aboutSkillsTitle),
          style: MyFonts.bold28.copyWith(color: colors.onNavy),
        ),
        SizedBox(height: 28.h),
        for (final group in SkillGroup.all)
          Padding(
            padding: EdgeInsets.only(bottom: 26.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  context.translate(group.labelKey).toUpperCase(),
                  style: MyFonts.caps10.copyWith(color: colors.accent),
                ),
                SizedBox(height: 12.h),
                Wrap(
                  spacing: 10.w,
                  runSpacing: 10.h,
                  children: <Widget>[
                    for (final skill in group.skills) SkillChip(label: skill),
                  ],
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class SkillChip extends StatelessWidget {
  const SkillChip({required this.label, super.key});

  final String label;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 9.h),
      decoration: BoxDecoration(
        color: colors.surface,
        borderRadius: BorderRadius.circular(100.r),
        border: Border.all(color: colors.divider),
      ),
      child: Text(
        label,
        style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
      ),
    );
  }
}
