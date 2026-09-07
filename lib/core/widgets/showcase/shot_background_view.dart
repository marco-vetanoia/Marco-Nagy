import 'dart:ui' as ui;

import 'package:flutter/material.dart';

import '../../../features/portfolio_content/domain/entities/shot_background.dart';
import '../../utils/extension/context_extensions.dart';
import '../../utils/hex_color.dart';
import '../common/app_image.dart';

/// Paints the ground behind a showcase panel.
///
/// The scrim ([ShotBackground.overlayOpacity]) sits above the background and
/// below the content: white caption text over an arbitrary photo is the usual
/// reason a panel reads as broken, and this is the fix.
class ShotBackgroundView extends StatelessWidget {
  const ShotBackgroundView({required this.background, super.key});

  final ShotBackground background;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final primary = HexColor.parse(background.colorHex, colors.pageTop);
    final secondary = HexColor.parse(background.colorHex2, colors.pageBottom);

    final ground = switch (background.style) {
      ShotBackgroundStyle.none => const SizedBox.expand(),
      ShotBackgroundStyle.solid => ColoredBox(
        color: primary,
        child: const SizedBox.expand(),
      ),
      ShotBackgroundStyle.linearGradient => DecoratedBox(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[primary, secondary],
          ),
        ),
        child: const SizedBox.expand(),
      ),
      ShotBackgroundStyle.radialGradient => DecoratedBox(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            radius: 0.9,
            colors: <Color>[secondary, primary],
          ),
        ),
        child: const SizedBox.expand(),
      ),
      ShotBackgroundStyle.blob => _BlobGround(ground: primary, blob: secondary),
      ShotBackgroundStyle.image => AppImage(
        image: background.image,
        fallback: ColoredBox(color: primary, child: const SizedBox.expand()),
      ),
    };

    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        if (background.blurSigma > 0)
          ImageFiltered(
            imageFilter: ui.ImageFilter.blur(
              sigmaX: background.blurSigma,
              sigmaY: background.blurSigma,
            ),
            child: ground,
          )
        else
          ground,
        if (background.overlayOpacity > 0)
          ColoredBox(
            color: colors.shadow.withValues(alpha: background.overlayOpacity),
          ),
      ],
    );
  }
}

/// A solid ground with an organic blob shape on it — the Bookly treatment.
class _BlobGround extends StatelessWidget {
  const _BlobGround({required this.ground, required this.blob});

  final Color ground;
  final Color blob;

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: ground,
      child: CustomPaint(
        painter: _BlobPainter(color: blob),
        child: const SizedBox.expand(),
      ),
    );
  }
}

/// Draws a soft closed curve — four Bézier arcs with uneven control points, so
/// it reads as hand-drawn rather than as an ellipse.
class _BlobPainter extends CustomPainter {
  const _BlobPainter({required this.color});

  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    // Blob occupies the leading half of the panel, as in the reference.
    final path = Path()
      ..moveTo(w * 0.06, h * 0.42)
      ..cubicTo(w * 0.02, h * 0.16, w * 0.18, h * 0.06, w * 0.34, h * 0.10)
      ..cubicTo(w * 0.50, h * 0.14, w * 0.62, h * 0.30, w * 0.58, h * 0.52)
      ..cubicTo(w * 0.55, h * 0.74, w * 0.40, h * 0.94, w * 0.24, h * 0.90)
      ..cubicTo(w * 0.10, h * 0.86, w * 0.09, h * 0.66, w * 0.06, h * 0.42)
      ..close();

    canvas.drawPath(
      path,
      Paint()
        ..color = color
        ..isAntiAlias = true,
    );
  }

  @override
  bool shouldRepaint(covariant _BlobPainter oldDelegate) =>
      color != oldDelegate.color;
}
