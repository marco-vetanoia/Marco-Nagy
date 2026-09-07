import 'package:flutter/material.dart';

/// The only icons a tech badge may use.
///
/// Icons are looked up by key from this const map instead of reconstructing an
/// `IconData` from a stored code point. Building IconData dynamically defeats
/// Flutter's `--tree-shake-icons` pass and fails the release web build, so an
/// unknown key falls back to [fallback] rather than fabricating one.
class AppIconCatalog {
  const AppIconCatalog._();

  static const IconData fallback = Icons.widgets_outlined;

  static const Map<String, IconData> icons = <String, IconData>{
    'flutter': Icons.flutter_dash,
    'firebase': Icons.local_fire_department_outlined,
    'bloc': Icons.account_tree_outlined,
    'api': Icons.api_outlined,
    'maps': Icons.map_outlined,
    'cicd': Icons.rocket_launch_outlined,
    'database': Icons.storage_outlined,
    'cloud': Icons.cloud_outlined,
    'mobile': Icons.phone_iphone_outlined,
    'web': Icons.language_outlined,
    'design': Icons.brush_outlined,
    'testing': Icons.science_outlined,
    'security': Icons.lock_outline,
    'analytics': Icons.insights_outlined,
    'chat': Icons.chat_bubble_outline,
    'payment': Icons.credit_card_outlined,
    'notification': Icons.notifications_none_rounded,
    'ai': Icons.auto_awesome_outlined,
    'code': Icons.code_rounded,
    'terminal': Icons.terminal_outlined,
    'git': Icons.merge_type_outlined,
    'speed': Icons.speed_outlined,
    'layers': Icons.layers_outlined,
    'settings': Icons.settings_outlined,
  };

  /// Stable order for the icon-picker grid in the admin form.
  static List<String> get keys => icons.keys.toList(growable: false);

  static IconData resolve(String key) => icons[key] ?? fallback;
}
