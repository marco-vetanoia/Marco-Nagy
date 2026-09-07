import 'package:flutter/widgets.dart';

import 'motion_durations.dart';
import 'reveal_trigger.dart';

/// Fades and lifts its child into place the first time it is allowed to
/// reveal, then stays put.
///
/// This is the reveal for things that are *not* text — cards, images, panels.
/// Text uses `BlockRevealText`, which wipes rather than fades; mixing the two
/// on the same screen is deliberate and matches the reference site.
///
/// [RevealTrigger] owns the decision of when this fires.
class RevealOnScroll extends StatefulWidget {
  const RevealOnScroll({
    required this.child,
    this.delay = Duration.zero,
    this.rise = Motion.riseDistance,
    super.key,
  });

  final Widget child;

  /// Stagger offset for siblings revealing together.
  final Duration delay;

  /// How far the child travels upward while fading in.
  final double rise;

  @override
  State<RevealOnScroll> createState() => _RevealOnScrollState();
}

class _RevealOnScrollState extends State<RevealOnScroll>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Motion.enter,
  );

  late final Animation<double> _fade = CurvedAnimation(
    parent: _controller,
    curve: Motion.enterCurve,
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _reveal({required bool instant}) {
    if (instant) {
      _controller.value = 1;
      return;
    }
    _controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    // FadeTransition repaints without rebuilding. SlideTransition is not used
    // because it travels in fractions of the child's own size, which would
    // make tall sections rise further than short ones; the rise here is a
    // fixed pixel distance. AnimatedBuilder's `child` is built once and passed
    // through, so only the Transform layer is rebuilt per frame.
    return RevealTrigger(
      delay: widget.delay,
      onReveal: _reveal,
      child: FadeTransition(
        opacity: _fade,
        child: AnimatedBuilder(
          animation: _fade,
          child: widget.child,
          builder: (context, child) => Transform.translate(
            offset: Offset(0, widget.rise * (1 - _fade.value)),
            child: child,
          ),
        ),
      ),
    );
  }
}
