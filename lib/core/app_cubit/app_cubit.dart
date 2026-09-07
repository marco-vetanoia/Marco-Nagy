import 'dart:ui' show Locale;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../services/shared_preference/shared_pref_keys.dart';
import '../services/shared_preference/shared_preference_helper.dart';
import 'app_actions.dart';
import 'app_state.dart';

const String kEnglish = 'en';
const String kArabic = 'ar';

/// Owns app-wide language state. Persisted to shared_preferences so the choice
/// survives a restart, the same way theme mode is persisted elsewhere.
@injectable
class AppCubit extends Cubit<AppState> {
  AppCubit(this._prefs) : super(const AppInitialState());

  final SharedPrefHelper _prefs;

  String currentLanguage = kEnglish;

  Locale get locale => Locale(currentLanguage);
  bool get isArabic => currentLanguage == kArabic;

  void doAction(AppActions action) {
    switch (action) {
      case LoadSavedLanguage():
        _loadSavedLanguage();
      case ChangeLanguage():
        _changeLanguage(action.languageCode);
      case ToggleLanguage():
        _changeLanguage(isArabic ? kEnglish : kArabic);
    }
  }

  void _loadSavedLanguage() {
    final saved = _prefs.containPreference(key: SharedPrefKeys.language)
        ? _prefs.getString(key: SharedPrefKeys.language)
        : null;
    currentLanguage = (saved == kArabic || saved == kEnglish)
        ? saved!
        : kEnglish;
    emit(LanguageChangeState(locale: Locale(currentLanguage)));
  }

  void _changeLanguage(String languageCode) {
    if (languageCode != kEnglish && languageCode != kArabic) return;
    if (languageCode == currentLanguage) return;
    currentLanguage = languageCode;
    unawaitedSetLanguage(languageCode);
    emit(LanguageChangeState(locale: Locale(currentLanguage)));
  }

  /// Fire-and-forget persist — the UI must not wait on disk to switch language.
  void unawaitedSetLanguage(String languageCode) {
    _prefs.setString(key: SharedPrefKeys.language, stringValue: languageCode);
  }
}
