import 'package:flutter/material.dart';

import '../../localization/app_localizations.dart';
import '../../styles/theme/app_color_theme.dart';
import '../../styles/theme/app_gradient_theme.dart';

extension ContextExtensions on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  /// Semantic colors / gradients — never read raw palette constants in a widget.
  AppColorTheme get colors => Theme.of(this).extension<AppColorTheme>()!;
  AppGradientTheme get gradients =>
      Theme.of(this).extension<AppGradientTheme>()!;

  /// Resolves a [LangKeys] constant. Falls back to the raw key when the
  /// delegate isn't installed (e.g. in a bare widget test), never to blank.
  String translate(String key) =>
      AppLocalizations.of(this)?.translate(key) ?? key;

  bool get isArabic => Localizations.localeOf(this).languageCode == 'ar';
  bool get isRtl => Directionality.of(this) == TextDirection.rtl;

  /// Picks the Arabic variant of a bilingual content field when Arabic is
  /// active, falling back to English whenever the Arabic value is empty.
  String localized(String en, String ar) {
    if (!isArabic) return en;
    return ar.trim().isEmpty ? en : ar;
  }

  List<String> localizedList(List<String> en, List<String> ar) {
    if (!isArabic) return en;
    return ar.isEmpty ? en : ar;
  }
}
