import 'package:flutter/widgets.dart';

/// The notifier a scrolling page owns and pokes on every scroll notification.
class RevealTicker extends ChangeNotifier {
  void tick() => notifyListeners();
}

/// Hands every `RevealTrigger` beneath it the page's scroll ticker.
///
/// Deliberately a plain [InheritedWidget] holding a notifier, not an
/// [InheritedNotifier]: an InheritedNotifier rebuilds all of its dependents on
/// every notification, which for ~40 revealing widgets means 40 rebuilds per
/// scroll frame. Revealing widgets subscribe to the ticker directly instead,
/// and each detaches itself once it has revealed.
class RevealScope extends InheritedWidget {
  const RevealScope({required this.ticker, required super.child, super.key});

  final RevealTicker ticker;

  /// Reads the ticker *without* registering an inherited dependency — that is
  /// what keeps a scroll frame from rebuilding the whole page.
  static RevealTicker? maybeOf(BuildContext context) =>
      context.getInheritedWidgetOfExactType<RevealScope>()?.ticker;

  @override
  bool updateShouldNotify(RevealScope oldWidget) => ticker != oldWidget.ticker;
}
