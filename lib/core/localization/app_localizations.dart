import 'dart:convert' show json;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app_localizations_delegate.dart';

/// Loads `translations/<lang>.json` and resolves [LangKeys] into strings.
class AppLocalizations {
  AppLocalizations(this.locale);

  final Locale locale;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      AppLocalizationsDelegate();

  Map<String, String> _localizedStrings = const <String, String>{};

  Future<void> load() async {
    final jsonString = await rootBundle.loadString(
      'translations/${locale.languageCode}.json',
    );
    final jsonMap = json.decode(jsonString) as Map<String, dynamic>;
    _localizedStrings = jsonMap.map<String, String>(
      (key, value) => MapEntry(key, value.toString()),
    );
  }

  /// Falls back to the raw key so a missing translation is visible, never blank.
  String translate(String key) => _localizedStrings[key] ?? key;

  bool get isEnLocale => locale.languageCode == 'en';
}
