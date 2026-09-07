import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../utils/extension/context_extensions.dart';

/// The footer's decorative diagonal-hatched circle.
class HatchedCircle extends StatelessWidget {
  const HatchedCircle({required this.diameter, this.color, super.key});

  final double diameter;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: diameter,
      child: CustomPaint(
        painter: _HatchedCirclePainter(
          color: color ?? context.colors.accent.withValues(alpha: 0.35),
        ),
      ),
    );
  }
}

class _HatchedCirclePainter extends CustomPainter {
  const _HatchedCirclePainter({required this.color});

  final Color color;

  static const double spacing = 9;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.shortestSide / 2;
    final center = size.center(Offset.zero);

    canvas
      ..save()
      ..clipPath(
        Path()..addOval(Rect.fromCircle(center: center, radius: radius)),
      );

    final paint = Paint()
      ..color = color
      ..strokeWidth = 1.2
      ..style = PaintingStyle.stroke;

    // 45-degree hatch: sweep the diagonal offset across the full diameter.
    final diagonal = size.width + size.height;
    for (var offset = -size.height; offset < diagonal; offset += spacing) {
      canvas.drawLine(
        Offset(offset, 0),
        Offset(offset - size.height, size.height),
        paint,
      );
    }
    canvas.restore();

    canvas.drawCircle(
      center,
      radius - 0.6,
      Paint()
        ..color = color
        ..strokeWidth = 1.2
        ..style = PaintingStyle.stroke,
    );
  }

  @override
  bool shouldRepaint(covariant _HatchedCirclePainter oldDelegate) =>
      color != oldDelegate.color;
}

/// A plain outlined ring used behind the hero photo.
class OutlineRing extends StatelessWidget {
  const OutlineRing({
    required this.diameter,
    this.color,
    this.strokeWidth = 1.2,
    this.dashed = false,
    super.key,
  });

  final double diameter;
  final Color? color;
  final double strokeWidth;
  final bool dashed;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: diameter,
      child: CustomPaint(
        painter: _OutlineRingPainter(
          color: color ?? context.colors.onNavyFaint.withValues(alpha: 0.35),
          strokeWidth: strokeWidth,
          dashed: dashed,
        ),
      ),
    );
  }
}

class _OutlineRingPainter extends CustomPainter {
  const _OutlineRingPainter({
    required this.color,
    required this.strokeWidth,
    required this.dashed,
  });

  final Color color;
  final double strokeWidth;
  final bool dashed;

  @override
  void paint(Canvas canvas, Size size) {
    final radius = size.shortestSide / 2 - strokeWidth;
    final center = size.center(Offset.zero);
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    if (!dashed) {
      canvas.drawCircle(center, radius, paint);
      return;
    }

    const dashSweep = 0.06;
    const gapSweep = 0.04;
    final rect = Rect.fromCircle(center: center, radius: radius);
    for (var angle = 0.0; angle < math.pi * 2; angle += dashSweep + gapSweep) {
      canvas.drawArc(rect, angle, dashSweep, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _OutlineRingPainter oldDelegate) =>
      color != oldDelegate.color ||
      strokeWidth != oldDelegate.strokeWidth ||
      dashed != oldDelegate.dashed;
}
