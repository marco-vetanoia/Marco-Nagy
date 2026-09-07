import 'dart:math' as math;
import 'dart:ui' show lerpDouble;

import 'package:flutter/material.dart';

/// Draws the section badge's texture ring: concentric near-circles whose radius
/// is perturbed by a sine wave, each one phase-shifted, so the band reads as
/// woven wavy lines rather than plain rings.
class WavyRingPainter extends CustomPainter {
  const WavyRingPainter({
    required this.color,
    this.rings = 16,
    this.waves = 24,
    this.amplitude = 3.2,
    this.bandInset = 0.74,
    this.strokeWidth = 1.0,
  });

  final Color color;

  /// Number of concentric wavy lines forming the band.
  final int rings;

  /// Sine periods around one full turn.
  final int waves;
  final double amplitude;

  /// Inner edge of the band as a fraction of the outer radius.
  final double bandInset;
  final double strokeWidth;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final outerRadius = size.shortestSide / 2 - amplitude - strokeWidth;
    if (outerRadius <= 0) return;
    final innerRadius = outerRadius * bandInset;

    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..isAntiAlias = true;

    for (var i = 0; i < rings; i++) {
      final t = rings == 1 ? 0.0 : i / (rings - 1);
      final baseRadius = lerpDouble(innerRadius, outerRadius, t)!;

      // Fade the band out towards its inner edge so the name stays legible.
      paint.color = color.withValues(alpha: 0.18 + 0.42 * t);

      final path = Path();
      const stepDegrees = 2;
      for (var degrees = 0; degrees <= 360; degrees += stepDegrees) {
        final radians = degrees * math.pi / 180;
        final radius =
            baseRadius + math.sin(radians * waves + i * 0.55) * amplitude;
        final point = Offset(
          center.dx + math.cos(radians) * radius,
          center.dy + math.sin(radians) * radius,
        );
        if (degrees == 0) {
          path.moveTo(point.dx, point.dy);
        } else {
          path.lineTo(point.dx, point.dy);
        }
      }
      path.close();
      canvas.drawPath(path, paint);
    }
  }

  @override
  bool shouldRepaint(covariant WavyRingPainter oldDelegate) {
    return color != oldDelegate.color ||
        rings != oldDelegate.rings ||
        waves != oldDelegate.waves ||
        amplitude != oldDelegate.amplitude ||
        bandInset != oldDelegate.bandInset ||
        strokeWidth != oldDelegate.strokeWidth;
  }
}
