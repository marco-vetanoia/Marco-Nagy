import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/profile_info.dart';
import '../../../../core/constants/tech_badges.dart';
import '../../../../core/styles/app_images.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/widgets/common/hatched_circle.dart';
import '../../../../core/widgets/common/safe_asset_image.dart';
import '../../../../core/widgets/motion/motion_durations.dart';

/// The headshot on its circular backdrop, with tech badges revolving around it.
///
/// A single controller drives the whole orbit: seven badges sharing one ticker
/// rather than each running its own, and only the badge layer rebuilds per
/// frame — the photo and rings are passed through untouched.
class HeroPhoto extends StatefulWidget {
  const HeroPhoto({required this.diameter, super.key});

  final double diameter;

  @override
  State<HeroPhoto> createState() => _HeroPhotoState();
}

class _HeroPhotoState extends State<HeroPhoto> with TickerProviderStateMixin {
  /// Revolves the badges around the photo.
  late final AnimationController _orbit = AnimationController(
    vsync: this,
    duration: Motion.orbitPeriod,
  );

  /// Floats the whole cluster — photo, rings and badges — up and down. Kept on
  /// its own controller so its period is free of the orbit's, which stops the
  /// two settling into a visible repeating pattern.
  late final AnimationController _float = AnimationController(
    vsync: this,
    duration: Motion.heroFloatPeriod,
  );

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (Motion.reducedMotion(context)) {
      _orbit.stop();
      _float.stop();
      return;
    }
    if (!_orbit.isAnimating) _orbit.repeat();
    if (!_float.isAnimating) _float.repeat();
  }

  @override
  void dispose() {
    _orbit.dispose();
    _float.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    // Badges ride just outside the photo, inside the outer ring.
    final orbitRadius = widget.diameter * 0.62;
    final canvasSize = widget.diameter + 120.w;
    final badges = TechBadge.heroOrbit;

    return AnimatedBuilder(
      animation: _float,
      builder: (context, child) => Transform.translate(
        // A full sine period per cycle, so it returns to rest smoothly with no
        // jump at the loop point.
        offset: Offset(
          0,
          math.sin(_float.value * 2 * math.pi) * Motion.heroFloatDistance,
        ),
        child: child,
      ),
      child: SizedBox.square(
        dimension: canvasSize,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            // Soft bloom so the portrait separates from the page gradient.
            SizedBox.square(
              dimension: canvasSize,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: <Color>[
                      colors.accent.withValues(alpha: 0.22),
                      colors.transparent,
                    ],
                  ),
                ),
              ),
            ),
            OutlineRing(diameter: widget.diameter + 96.w, dashed: true),
            OutlineRing(
              diameter: widget.diameter + 28.w,
              color: colors.accent.withValues(alpha: 0.45),
            ),
            _PhotoDisc(diameter: widget.diameter),
            for (var i = 0; i < badges.length; i++)
              AnimatedBuilder(
                animation: _orbit,
                // The chip is built once and carried through, so a frame only
                // recomputes the transform.
                child: TechBadgeChip(badge: badges[i]),
                builder: (context, child) {
                  // Evenly spaced around the circle, all advancing together.
                  final angle =
                      (i / badges.length) * 2 * math.pi -
                      math.pi / 2 +
                      _orbit.value * 2 * math.pi;
                  return Transform.translate(
                    offset: Offset(
                      math.cos(angle) * orbitRadius,
                      math.sin(angle) * orbitRadius,
                    ),
                    child: child,
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}

class _PhotoDisc extends StatelessWidget {
  const _PhotoDisc({required this.diameter});

  final double diameter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: diameter,
      height: diameter,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: context.gradients.surfacePanel,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: context.colors.pageTop.withValues(alpha: 0.6),
            blurRadius: 40,
            offset: const Offset(0, 18),
          ),
        ],
      ),
      child: ClipOval(
        child: SafeAssetImage(
          assetPath: AppImages.profile,
          fallback: const _MonogramFallback(),
        ),
      ),
    );
  }
}

/// Shown until `assets/images/profile.png` is added, so the hero never breaks.
class _MonogramFallback extends StatelessWidget {
  const _MonogramFallback();

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.gradients.surfacePanel),
      child: Center(
        child: Text(
          ProfileInfo.monogram,
          style: MyFonts.display64.copyWith(color: context.colors.accent),
        ),
      ),
    );
  }
}

/// One technology's logo, riding the orbit unframed.
///
/// The mark stands on its own — no chip, no ring — so each logo reads at its
/// full size and keeps its own brand colours rather than sitting on a disc that
/// competes with them. The brand colours survive on [TechBadge] to tint the
/// fallback glyph when a logo file is missing.
class TechBadgeChip extends StatelessWidget {
  const TechBadgeChip({required this.badge, this.size, super.key});

  final TechBadge badge;
  final double? size;

  @override
  Widget build(BuildContext context) {
    // The mark now occupies the full extent the chip used to, so it reads
    // roughly twice the size it did inside the old padded disc.
    final extent = size ?? 46.r;

    return Tooltip(
      message: badge.label,
      child: SizedBox(
        width: extent,
        height: extent,
        child: SafeAssetImage(
          assetPath: badge.assetPath,
          fit: BoxFit.contain,
          fallback: FittedBox(
            // Tinted with the lighter brand stop so it stays legible on navy.
            child: Icon(badge.fallbackIcon, color: badge.brandStart),
          ),
        ),
      ),
    );
  }
}
