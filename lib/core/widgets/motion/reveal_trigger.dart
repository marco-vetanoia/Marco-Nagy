import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'motion_durations.dart';
import 'reveal_scope.dart';

/// Decides *when* a piece of content is allowed to animate in, and says so
/// exactly once.
///
/// This is the gate every reveal shares, kept in one place because getting it
/// right takes four separate signals and duplicating them per effect is how
/// they drift apart:
///
/// * the page curtain — content must not play out behind the panel, or it
///   arrives already settled;
/// * scroll — the ordinary case, driven by [RevealScope]'s ticker;
/// * window metrics — a resize can bring content into view with no scroll;
/// * no scrollable at all — a short page would otherwise strand its content
///   invisible forever.
class RevealTrigger extends StatefulWidget {
  const RevealTrigger({
    required this.child,
    required this.onReveal,
    this.delay = Duration.zero,
    this.debugLabel,
    super.key,
  });

  final Widget child;

  /// Fired once. [instant] asks the caller to jump straight to the end state
  /// rather than animate — the accessibility path.
  final void Function({required bool instant}) onReveal;

  /// Held before [onReveal] fires. Callers stagger with this; it is added on
  /// top of the curtain beat, never instead of it.
  final Duration delay;

  /// TEMPORARY: when set, prints a trace of every check this trigger makes.
  /// Remove once the "SectionDividerHeader never reveals" bug is found.
  final String? debugLabel;

  @override
  State<RevealTrigger> createState() => _RevealTriggerState();
}

class _RevealTriggerState extends State<RevealTrigger>
    with WidgetsBindingObserver {
  RevealTicker? _ticker;
  Animation<double>? _routeAnimation;
  bool _fired = false;

  /// True once the curtain has stopped covering this page. The page is built
  /// and laid out behind the panel, so without this the reveal would run to
  /// completion unseen.
  bool get _onScreen {
    final animation = _routeAnimation;
    return animation == null ||
        animation.value >= Motion.curtainRevealPoint ||
        animation.status == AnimationStatus.completed;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) => _check());
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final ticker = RevealScope.maybeOf(context);
    if (!identical(ticker, _ticker)) {
      _ticker?.removeListener(_check);
      _ticker = ticker;
      if (!_fired) _ticker?.addListener(_check);
    }

    final routeAnimation = ModalRoute.of(context)?.animation;
    if (!identical(routeAnimation, _routeAnimation)) {
      _routeAnimation?.removeListener(_onCurtain);
      _routeAnimation = routeAnimation;
      final attach = !_fired && !_onScreen;
      if (attach) _routeAnimation?.addListener(_onCurtain);
      if (widget.debugLabel != null && kDebugMode) {
        debugPrint(
          '[${widget.debugLabel}] didChangeDependencies: '
          'routeAnimation=$routeAnimation value=${routeAnimation?.value} '
          'onScreen=$_onScreen attachCurtainListener=$attach',
        );
      }
    }
  }

  @override
  void didChangeMetrics() {
    if (_fired) return;
    WidgetsBinding.instance.addPostFrameCallback((_) => _check());
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _ticker?.removeListener(_check);
    _routeAnimation?.removeListener(_onCurtain);
    super.dispose();
  }

  /// Fires on every remaining tick once the curtain opens, not just the
  /// first — a single missed attempt here (a layout race the instant the
  /// panel clears) must not permanently strand the reveal until a scroll
  /// happens to bail it out. [_fire] is the only place that detaches this
  /// listener, and only once `_check` has actually succeeded.
  void _onCurtain() {
    if (!_onScreen) return;
    _check(afterCurtain: true);
  }

  void _check({bool afterCurtain = false}) {
    final label = widget.debugLabel;

    if (_fired || !mounted || !_onScreen) {
      if (label != null && kDebugMode) {
        debugPrint(
          '[$label] _check skipped: fired=$_fired mounted=$mounted '
          'onScreen=$_onScreen afterCurtain=$afterCurtain',
        );
      }
      return;
    }

    if (Motion.reducedMotion(context)) {
      if (label != null && kDebugMode) {
        debugPrint('[$label] reducedMotion -> instant fire');
      }
      _fire(instant: true);
      return;
    }

    final box = context.findRenderObject() as RenderBox?;
    if (box == null || !box.hasSize) {
      if (label != null && kDebugMode) {
        debugPrint('[$label] no box yet: box=$box hasSize=${box?.hasSize}');
      }
      return;
    }

    // Nothing to scroll means nothing will ever bring this into view.
    final position = Scrollable.maybeOf(context)?.position;
    final cannotScroll =
        position == null ||
        !position.hasContentDimensions ||
        position.maxScrollExtent <= 0;

    if (cannotScroll) {
      if (label != null && kDebugMode) {
        debugPrint(
          '[$label] cannotScroll ($position, '
          '${position?.hasContentDimensions}, ${position?.maxScrollExtent}) '
          '-> fire',
        );
      }
      _fire(afterCurtain: afterCurtain);
      return;
    }

    final top = box.localToGlobal(Offset.zero).dy;
    final viewportHeight = MediaQuery.sizeOf(context).height;
    final inView = top <= viewportHeight * Motion.revealThreshold;
    if (label != null && kDebugMode) {
      debugPrint(
        '[$label] top=$top viewportHeight=$viewportHeight '
        'threshold=${viewportHeight * Motion.revealThreshold} inView=$inView',
      );
    }
    if (inView) {
      _fire(afterCurtain: afterCurtain);
    }
  }

  Future<void> _fire({bool instant = false, bool afterCurtain = false}) async {
    if (widget.debugLabel != null && kDebugMode) {
      debugPrint(
        '[${widget.debugLabel}] FIRE instant=$instant afterCurtain=$afterCurtain',
      );
    }
    _fired = true;
    // Detach immediately so later frames can't re-enter this path.
    _ticker?.removeListener(_check);
    _routeAnimation?.removeListener(_onCurtain);

    if (instant) {
      widget.onReveal(instant: true);
      return;
    }

    // Content released by the curtain waits a beat, so the page wipe and the
    // content wipe read as consecutive moves rather than as one smear.
    final wait =
        (afterCurtain ? Motion.blockGap : Duration.zero) + widget.delay;
    if (wait > Duration.zero) {
      await Future<void>.delayed(wait);
      if (!mounted) return;
    }
    widget.onReveal(instant: false);
  }

  @override
  Widget build(BuildContext context) => widget.child;
}
