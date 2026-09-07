import 'package:flutter/material.dart';

import '../../utils/extension/context_extensions.dart';

/// The navy gradient ground every page sits on, with a soft radial bloom in the
/// corner so the flat gradient never reads as a solid block.
class PageBackground extends StatelessWidget {
  const PageBackground({
    required this.child,
    this.glowAlignment = Alignment.topRight,
    super.key,
  });

  final Widget child;
  final Alignment glowAlignment;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(gradient: context.gradients.page),
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: IgnorePointer(
              child: Align(
                alignment: glowAlignment,
                child: FractionallySizedBox(
                  widthFactor: 0.75,
                  heightFactor: 0.55,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: RadialGradient(
                        colors: <Color>[
                          context.colors.accent.withValues(alpha: 0.14),
                          context.colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned.fill(child: child),
        ],
      ),
    );
  }
}
