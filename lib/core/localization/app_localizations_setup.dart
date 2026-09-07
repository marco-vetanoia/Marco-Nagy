import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'app_localizations.dart';

class AppLocalizationsSetup {
  const AppLocalizationsSetup._();

  static const Iterable<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ar'),
  ];

  static const Iterable<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ];

  static Locale? localeResolutionCallback(
    Locale? locale,
    Iterable<Locale>? supportedLocales,
  ) {
    final supported =
        supportedLocales ?? AppLocalizationsSetup.supportedLocales;
    if (locale == null) return supported.first;
    for (final supportedLocale in supported) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return supportedLocale;
      }
    }
    return supported.first;
  }
}
