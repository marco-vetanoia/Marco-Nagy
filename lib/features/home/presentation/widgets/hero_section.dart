import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/extension/navigation_extensions.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/responsive/app_breakpoints.dart';
import '../../../../core/widgets/common/content_container.dart';
import '../../../../core/widgets/common/pill_button.dart';
import '../../../../core/widgets/motion/reveal_on_scroll.dart';
import 'hero_headline.dart';
import 'hero_photo.dart';
import 'hero_social_links.dart';
import 'scroll_down_label.dart';

/// The landing view: headline and CTA on the leading side, the photo on the
/// trailing side, social links bottom-leading and the scroll cue on the edge.
class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      // Fills the first screenful without trapping content on short windows.
      constraints: BoxConstraints(minHeight: context.height * 0.78),
      child: Stack(
        children: <Widget>[
          ContentContainer(
            verticalPadding: 48.h,
            child: context.isWide ? const _WideHero() : const _NarrowHero(),
          ),
          if (context.isWide)
            Positioned.directional(
              textDirection: Directionality.of(context),
              end: 24.w,
              top: 0,
              bottom: 0,
              child: const Center(child: ScrollDownLabel()),
            ),
        ],
      ),
    );
  }
}

class _WideHero extends StatelessWidget {
  const _WideHero();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              // The headline wipes itself in per line; only the controls below
              // it still fade.
              const HeroHeadline(),
              SizedBox(height: 44.h),
              const RevealOnScroll(child: _SeeMyWorkCta()),
              SizedBox(height: 44.h),
              const RevealOnScroll(child: HeroSocialLinks()),
            ],
          ),
        ),
        SizedBox(width: 32.w),
        Expanded(
          flex: 5,
          // No reveal: on the reference the photo is already in place as the
          // curtain opens, and it carries its own orbit animation besides.
          child: Center(
            child: HeroPhoto(diameter: context.isDesktop ? 360.w : 300.w),
          ),
        ),
      ],
    );
  }
}

class _NarrowHero extends StatelessWidget {
  const _NarrowHero();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Center(child: HeroPhoto(diameter: 220.w)),
        SizedBox(height: 36.h),
        const HeroHeadline(),
        SizedBox(height: 36.h),
        const RevealOnScroll(child: _SeeMyWorkCta()),
        SizedBox(height: 36.h),
        const RevealOnScroll(child: HeroSocialLinks()),
      ],
    );
  }
}

class _SeeMyWorkCta extends StatelessWidget {
  const _SeeMyWorkCta();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: PillButton(
        label: context.translate(LangKeys.heroCta),
        onPressed: () => context.replaceNamed<void>(RouteNames.projects),
      ),
    );
  }
}
