import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/lang_keys.dart';
import '../../routes/route_names.dart';
import '../../utils/extension/navigation_extensions.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';
import '../../utils/responsive/app_breakpoints.dart';
import '../common/hatched_circle.dart';
import '../common/pill_button.dart';
import '../motion/block_reveal_text.dart';
import '../motion/reveal_on_scroll.dart';
import 'footer_social_icons.dart';

/// One site-wide footer, identical on every page — not a per-page CTA band.
class SiteFooter extends StatelessWidget {
  const SiteFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final isWide = context.isWide;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: context.isMobile ? 24.w : 64.w,
        vertical: 64.h,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: colors.divider.withValues(alpha: 0.6)),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          // The call to action wipes itself in line by line, so it is not
          // wrapped in a fade; only the ring beside it still needs one.
          if (isWide)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const Expanded(child: _FooterCallToAction()),
                SizedBox(width: 40.w),
                RevealOnScroll(child: HatchedCircle(diameter: 180.w)),
              ],
            )
          else ...<Widget>[
            const _FooterCallToAction(),
            SizedBox(height: 32.h),
            Center(
              child: RevealOnScroll(child: HatchedCircle(diameter: 140.w)),
            ),
          ],
          SizedBox(height: 48.h),
          Divider(color: colors.divider.withValues(alpha: 0.6)),
          SizedBox(height: 24.h),
          _FooterCredits(isWide: isWide),
        ],
      ),
    );
  }
}

class _FooterCallToAction extends StatelessWidget {
  const _FooterCallToAction();

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        BlockRevealText(
          context.translate(LangKeys.footerHeadline),
          style: (context.isMobile ? MyFonts.display36 : MyFonts.display48)
              .copyWith(color: colors.onNavy),
        ),
        SizedBox(height: 16.h),
        ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 520.w),
          child: BlockRevealText(
            context.translate(LangKeys.footerAvailability),
            style: MyFonts.regular16.copyWith(color: colors.onNavyMuted),
          ),
        ),
        SizedBox(height: 28.h),
        PillButton(
          label: context.translate(LangKeys.footerCta),
          onPressed: () => context.replaceNamed<void>(RouteNames.contact),
        ),
      ],
    );
  }
}

class _FooterCredits extends StatelessWidget {
  const _FooterCredits({required this.isWide});

  final bool isWide;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final year = DateTime.now().year;

    final credit = Text(
      '© $year ${context.translate(LangKeys.footerBuiltBy)}',
      style: MyFonts.regular12.copyWith(color: colors.onNavyFaint),
    );
    final builtWith = Text(
      context.translate(LangKeys.footerBuiltWith),
      style: MyFonts.regular12.copyWith(color: colors.onNavyFaint),
    );

    if (!isWide) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const FooterSocialIcons(),
          SizedBox(height: 20.h),
          credit,
          SizedBox(height: 6.h),
          builtWith,
        ],
      );
    }

    return Row(
      children: <Widget>[
        credit,
        SizedBox(width: 20.w),
        builtWith,
        const Spacer(),
        const FooterSocialIcons(),
      ],
    );
  }
}
