import 'package:flutter/foundation.dart' show kDebugMode;
import 'package:flutter/widgets.dart';

/// The single place the app decides whether content-management UI exists.
///
/// Debug builds render [child]; release builds render nothing at all, so an
/// add/edit/delete affordance can never ship. Every admin widget in every
/// feature goes through here — never check `kDebugMode` inline.
class AdminGate extends StatelessWidget {
  const AdminGate({required this.child, this.fallback, super.key});

  final Widget child;

  /// Rendered instead of [child] in release builds. Defaults to nothing.
  final Widget? fallback;

  /// Lets non-widget code (route guards, cubit branches) ask the same question.
  static bool get isEnabled => kDebugMode;

  @override
  Widget build(BuildContext context) {
    if (!isEnabled) return fallback ?? const SizedBox.shrink();
    return child;
  }
}
