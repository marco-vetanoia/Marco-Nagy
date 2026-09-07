import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/profile_info.dart';
import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/responsive/app_breakpoints.dart';
import '../../../../core/widgets/motion/block_reveal_text.dart';

/// "Hi, I'm / Marco. / Flutter Developer." — name and role on their own lines.
class HeroHeadline extends StatelessWidget {
  const HeroHeadline({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final headlineStyle = switch (context.screenKind) {
      ScreenKind.desktop => MyFonts.display96,
      ScreenKind.tablet => MyFonts.display64,
      ScreenKind.mobile => MyFonts.display48,
    };

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BlockRevealText(
          context.translate(LangKeys.heroGreeting),
          style: headlineStyle.copyWith(color: colors.onNavyMuted),
        ),
        BlockRevealText(
          context.translate(LangKeys.heroName),
          style: headlineStyle.copyWith(color: colors.onNavy),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: BlockRevealText(
                context.translate(LangKeys.heroRole),
                style: headlineStyle.copyWith(color: colors.accent),
              ),
            ),
          ],
        ),
        SizedBox(height: 20.h),
        HeroRoleTags(),
      ],
    );
  }
}

/// Role tags separated by a thin accent slash.
class HeroRoleTags extends StatelessWidget {
  const HeroRoleTags({super.key});

  @override
  Widget build(BuildContext context) {
    final tags = context.isArabic
        ? ProfileInfo.roleTagsAr
        : ProfileInfo.roleTags;
    final colors = context.colors;

    return Wrap(
      crossAxisAlignment: WrapCrossAlignment.center,
      children: <Widget>[
        for (var i = 0; i < tags.length; i++) ...<Widget>[
          Text(
            tags[i],
            style: MyFonts.caps12.copyWith(color: colors.onNavyMuted),
          ),
          if (i != tags.length - 1)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(
                '/',
                style: MyFonts.caps12.copyWith(color: colors.accent),
              ),
            ),
        ],
      ],
    );
  }
}
