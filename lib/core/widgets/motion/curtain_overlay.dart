import 'package:flutter/material.dart';

import '../../utils/extension/context_extensions.dart';

/// The horizontal wipe played when a nav item is selected.
///
/// Modelled on the reference site: a solid panel grows across the viewport to
/// cover the current view, the destination is put in place behind it, then the
/// panel retracts the same way to reveal it. The travel is hidden, so moving
/// between distant sections costs the same time as moving between neighbours.
class CurtainOverlay extends StatelessWidget {
  const CurtainOverlay({
    required this.progress,
    required this.covering,
    super.key,
  });

  /// 0 = fully open (nothing drawn), 1 = viewport fully covered.
  final double progress;

  /// While covering, the panel is anchored to the leading edge and grows.
  /// While revealing, it is anchored to the trailing edge and shrinks, so the
  /// destination appears from the leading edge — mirrored automatically in
  /// Arabic because both alignments are directional.
  final bool covering;

  @override
  Widget build(BuildContext context) {
    if (progress <= 0) return const SizedBox.shrink();

    return Positioned.fill(
      // Swallows taps while the curtain is across the screen, so a second nav
      // tap can't land mid-transition.
      child: IgnorePointer(
        ignoring: progress < 1,
        child: Align(
          alignment: covering
              ? AlignmentDirectional.centerStart
              : AlignmentDirectional.centerEnd,
          child: FractionallySizedBox(
            widthFactor: progress.clamp(0.0, 1.0),
            heightFactor: 1,
            child: ColoredBox(color: context.colors.pageTop),
          ),
        ),
      ),
    );
  }
}
