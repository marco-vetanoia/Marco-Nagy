sealed class AppActions {}

/// Reads the persisted language on startup.
class LoadSavedLanguage extends AppActions {}

class ChangeLanguage extends AppActions {
  ChangeLanguage(this.languageCode);
  final String languageCode;
}

/// Flips between 'en' and 'ar'.
class ToggleLanguage extends AppActions {}
