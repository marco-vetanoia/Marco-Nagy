import 'dart:ui' show Locale;

sealed class AppState {
  const AppState();
}

class AppInitialState extends AppState {
  const AppInitialState();
}

class LanguageChangeState extends AppState {
  const LanguageChangeState({required this.locale});
  final Locale locale;
}
