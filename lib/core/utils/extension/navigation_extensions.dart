import 'package:flutter/material.dart';

extension NavigationExtensions on BuildContext {
  Future<T?> pushNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.of(this).pushNamed<T>(routeName, arguments: arguments);

  /// Used by the top nav: replaces rather than stacks, so clicking through the
  /// nav never builds an unbounded back stack on web.
  Future<T?> replaceNamed<T>(String routeName, {Object? arguments}) =>
      Navigator.of(
        this,
      ).pushReplacementNamed<T, void>(routeName, arguments: arguments);

  void pop<T>([T? result]) => Navigator.of(this).pop<T>(result);

  bool get canPop => Navigator.of(this).canPop();
}
