import 'package:flutter/material.dart';

import '../widgets/motion/curtain_overlay.dart';
import '../widgets/motion/motion_durations.dart';

/// Every in-app navigation plays the reference site's curtain wipe: a panel
/// sweeps across to cover the page being left, then retracts the same way to
/// reveal the one being entered.
class BaseRoute<T> extends PageRouteBuilder<T> {
  BaseRoute({required this.page, super.settings})
    : super(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        // Two halves — cover, then reveal.
        transitionDuration: Motion.curtain * 2,
        reverseTransitionDuration: Motion.curtain * 2,
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            _CurtainTransition(animation: animation, child: child),
      );

  final Widget page;
}

class _CurtainTransition extends StatelessWidget {
  const _CurtainTransition({required this.animation, required this.child});

  final Animation<double> animation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      child: child,
      builder: (context, child) {
        final t = animation.value;
        final covering = t < Motion.curtainRevealPoint;

        // One panel travelling 0 -> 1 -> 0: growing while it covers the old
        // page, shrinking while it uncovers the new one.
        final raw = covering ? t * 2 : (1 - t) * 2;
        final progress = Motion.curtainCurve.transform(raw.clamp(0.0, 1.0));

        return Stack(
          children: <Widget>[
            // The incoming page stays hidden until the panel has fully covered
            // the screen, so the swap itself is never visible. It is still
            // built and laid out underneath, ready to be revealed.
            Opacity(opacity: covering ? 0 : 1, child: child),
            CurtainOverlay(progress: progress, covering: covering),
          ],
        );
      },
    );
  }
}
