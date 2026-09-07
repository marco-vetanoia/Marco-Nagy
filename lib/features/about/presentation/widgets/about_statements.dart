import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/profile_info.dart';
import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/responsive/app_breakpoints.dart';
import '../../../../core/widgets/motion/block_reveal_text.dart';

/// The large, lighter statement sentences built from the CV summary.
class AboutStatements extends StatelessWidget {
  const AboutStatements({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final statements = context.isArabic
        ? ProfileInfo.aboutStatementsAr
        : ProfileInfo.aboutStatements;
    final statementStyle = context.isDesktop
        ? MyFonts.statement26
        : MyFonts.statement20;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BlockRevealText(
          context.translate(LangKeys.aboutLead),
          style: MyFonts.bold28.copyWith(color: colors.accent),
        ),
        SizedBox(height: 28.h),
        // Every statement shares one timeline: the reference wipes a whole
        // paragraph open at once, so no delay is passed here.
        for (final statement in statements)
          Padding(
            padding: EdgeInsets.only(bottom: 22.h),
            child: BlockRevealText(
              statement,
              style: statementStyle.copyWith(color: colors.onNavy),
            ),
          ),
        SizedBox(height: 8.h),
        const _LocationLine(),
      ],
    );
  }
}

class _LocationLine extends StatelessWidget {
  const _LocationLine();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(Icons.place_outlined, size: 18.r, color: colors.accent),
        SizedBox(width: 8.w),
        Text(
          '${context.translate(LangKeys.aboutLocationLabel)} '
          '${context.localized(ProfileInfo.location, ProfileInfo.locationAr)}',
          style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
        ),
      ],
    );
  }
}
