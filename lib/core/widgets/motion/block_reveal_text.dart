import 'package:flutter/material.dart';

import '../../utils/extension/context_extensions.dart';
import 'motion_durations.dart';
import 'reveal_trigger.dart';

/// Text that arrives the way the reference site's does: a solid panel sweeps
/// across each line to cover it, then retracts off the opposite edge, wiping
/// the glyphs into view.
///
/// The text itself never moves and never fades — it is simply uncovered. That
/// is the whole difference from a fade-and-rise reveal, and it is why the
/// block has to be measured per *line* rather than per widget: a panel the
/// width of the paragraph box would overhang every short line and read as a
/// rectangle switching off, not as a wipe.
///
/// All lines share one 0..1 timeline and land together — the reference has no
/// per-line stagger, and adding one makes a paragraph read as a list.
class BlockRevealText extends StatefulWidget {
  const BlockRevealText(
    this.text, {
    this.style,
    this.textAlign = TextAlign.start,
    this.maxLines,
    this.blockColor,
    this.delay = Duration.zero,
    this.debugLabel,
    super.key,
  });

  final String text;
  final TextStyle? style;
  final TextAlign textAlign;
  final int? maxLines;

  /// Defaults to the design system's soft accent (baby blue) — distinct from
  /// the navy page curtain, so a line wipe reads as its own material rather
  /// than a leftover scrap of the page transition.
  final Color? blockColor;

  /// Held before the wipe starts. Callers stagger *sections*, never lines.
  final Duration delay;

  /// TEMPORARY: forwarded to [RevealTrigger]. Remove with it once the
  /// "SectionDividerHeader never reveals" bug is found.
  final String? debugLabel;

  @override
  State<BlockRevealText> createState() => _BlockRevealTextState();
}

class _BlockRevealTextState extends State<BlockRevealText>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Motion.blockCover + Motion.blockReveal,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _start({required bool instant}) {
    if (instant) {
      _controller.value = 1;
      return;
    }
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    final style = DefaultTextStyle.of(context).style.merge(widget.style);

    return RevealTrigger(
      delay: widget.delay,
      onReveal: _start,
      debugLabel: widget.debugLabel,
      child: AnimatedBuilder(
        animation: _controller,
        builder: (context, _) => _BlockRevealTextBox(
          text: TextSpan(text: widget.text, style: style),
          textDirection: Directionality.of(context),
          textAlign: widget.textAlign,
          maxLines: widget.maxLines,
          blockColor: widget.blockColor ?? context.colors.accentSoft,
          progress: _controller.value,
        ),
      ),
    );
  }
}

class _BlockRevealTextBox extends LeafRenderObjectWidget {
  const _BlockRevealTextBox({
    required this.text,
    required this.textDirection,
    required this.textAlign,
    required this.maxLines,
    required this.blockColor,
    required this.progress,
  });

  final InlineSpan text;
  final TextDirection textDirection;
  final TextAlign textAlign;
  final int? maxLines;
  final Color blockColor;
  final double progress;

  @override
  _RenderBlockRevealText createRenderObject(BuildContext context) {
    return _RenderBlockRevealText(
        text: text,
        textDirection: textDirection,
        textAlign: textAlign,
        maxLines: maxLines,
        textScaler: MediaQuery.textScalerOf(context),
      )
      ..blockColor = blockColor
      ..progress = progress;
  }

  @override
  void updateRenderObject(
    BuildContext context,
    _RenderBlockRevealText renderObject,
  ) {
    renderObject
      ..text = text
      ..textDirection = textDirection
      ..textAlign = textAlign
      ..maxLines = maxLines
      ..blockColor = blockColor
      ..progress = progress
      ..textScaler = MediaQuery.textScalerOf(context);
  }
}

class _RenderBlockRevealText extends RenderBox {
  _RenderBlockRevealText({
    required InlineSpan text,
    required TextDirection textDirection,
    required TextAlign textAlign,
    required int? maxLines,
    required TextScaler textScaler,
  }) : _painter = TextPainter(
         text: text,
         textDirection: textDirection,
         textAlign: textAlign,
         maxLines: maxLines,
         textScaler: textScaler,
       );

  final TextPainter _painter;

  /// Both are set by the widget immediately after construction, so the
  /// placeholders here are never painted.
  Color _blockColor = const Color(0xFF000000);
  double _progress = 0;

  set text(InlineSpan value) {
    if (_painter.text == value) return;
    _painter.text = value;
    markNeedsLayout();
  }

  set textDirection(TextDirection value) {
    if (_painter.textDirection == value) return;
    _painter.textDirection = value;
    markNeedsLayout();
  }

  set textAlign(TextAlign value) {
    if (_painter.textAlign == value) return;
    _painter.textAlign = value;
    markNeedsLayout();
  }

  set maxLines(int? value) {
    if (_painter.maxLines == value) return;
    _painter.maxLines = value;
    markNeedsLayout();
  }

  set textScaler(TextScaler value) {
    if (_painter.textScaler == value) return;
    _painter.textScaler = value;
    markNeedsLayout();
  }

  set blockColor(Color value) {
    if (_blockColor == value) return;
    _blockColor = value;
    markNeedsPaint();
  }

  /// Only the panels move, so a new frame repaints without re-laying-out the
  /// paragraph — the expensive half runs once per size change, not per frame.
  set progress(double value) {
    if (_progress == value) return;
    _progress = value;
    markNeedsPaint();
  }

  void _layoutText(double maxWidth) =>
      _painter.layout(maxWidth: maxWidth.isFinite ? maxWidth : double.infinity);

  @override
  double computeMinIntrinsicWidth(double height) {
    _layoutText(double.infinity);
    return _painter.minIntrinsicWidth;
  }

  @override
  double computeMaxIntrinsicWidth(double height) {
    _layoutText(double.infinity);
    return _painter.maxIntrinsicWidth;
  }

  @override
  double computeMinIntrinsicHeight(double width) =>
      computeMaxIntrinsicHeight(width);

  @override
  double computeMaxIntrinsicHeight(double width) {
    _layoutText(width);
    return _painter.height;
  }

  @override
  double? computeDistanceToActualBaseline(TextBaseline baseline) {
    _layoutText(constraints.maxWidth);
    return _painter.computeDistanceToActualBaseline(baseline);
  }

  @override
  void performLayout() {
    _layoutText(constraints.maxWidth);
    size = constraints.constrain(Size(_painter.width, _painter.height));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    _layoutText(constraints.maxWidth);

    // Fast paths for the two rest states. Both matter: idle is the state
    // every not-yet-triggered line sits in — often for most of a page's
    // lifetime — and skipping the clip there is not just an optimisation,
    // it is what keeps a resting line from painting its glyphs at all.
    if (_progress >= 1) {
      _painter.paint(context.canvas, offset);
      return;
    }
    if (_progress <= 0) return;

    final blockPaint = Paint()..color = _blockColor;
    final isRtl = _painter.textDirection == TextDirection.rtl;
    final revealed = Path();

    for (final line in _painter.computeLineMetrics()) {
      if (line.width <= 0) continue;

      // `revealTo` is how much of the line, from its leading edge, is
      // exposed; [blockFrom, blockTo] is the still-covered span the panel
      // occupies. The two phases share one moving edge, so the panel and the
      // reveal boundary can never separate:
      //
      // Covering (t < blockCoverFraction): nothing is exposed yet — the
      // panel is purely a materialising cue, growing from the leading edge
      // over a line that has no visible text either way.
      //
      // Revealing (t >= blockCoverFraction): the panel retreats from the
      // leading edge, and text is exposed in exactly the space it vacates.
      final double revealTo;
      final double blockFrom;
      final double blockTo;
      if (_progress < Motion.blockCoverFraction) {
        final t = Motion.curtainCurve.transform(
          _progress / Motion.blockCoverFraction,
        );
        revealTo = 0;
        blockFrom = 0;
        blockTo = line.width * t;
      } else {
        final t = Motion.curtainCurve.transform(
          (_progress - Motion.blockCoverFraction) /
              (1 - Motion.blockCoverFraction),
        );
        revealTo = line.width * t;
        blockFrom = revealTo;
        blockTo = line.width;
      }

      // `line.left` is already the laid-out leading edge for the direction,
      // so mirroring for Arabic is just measuring from the line's own right
      // edge instead of its left — no separate RTL branch below this.
      final lineStart = offset.dx + line.left;
      final top = offset.dy + line.baseline - line.ascent;
      final bottom = offset.dy + line.baseline + line.descent;

      Rect span(double from, double to) {
        if (isRtl) {
          final right = lineStart + line.width;
          return Rect.fromLTRB(right - to, top, right - from, bottom);
        }
        return Rect.fromLTRB(lineStart + from, top, lineStart + to, bottom);
      }

      if (revealTo > 0) revealed.addRect(span(0, revealTo));
      if (blockTo > blockFrom) {
        context.canvas.drawRect(span(blockFrom, blockTo), blockPaint);
      }
    }

    // Clipping to an empty path (pure covering phase, every line's revealTo
    // is 0) hides the glyphs entirely — the panels above are all that shows.
    context.canvas.save();
    context.canvas.clipPath(revealed);
    _painter.paint(context.canvas, offset);
    context.canvas.restore();
  }

  @override
  void dispose() {
    _painter.dispose();
    super.dispose();
  }
}
