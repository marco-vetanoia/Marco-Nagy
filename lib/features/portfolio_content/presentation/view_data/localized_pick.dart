/// Resolves a bilingual pair for the active language.
///
/// View-data factories take a plain `isArabic` flag rather than a
/// [BuildContext] so they stay pure and unit-testable without a widget tree.
String pickText(bool isArabic, String en, String ar) {
  if (!isArabic) return en;
  return ar.trim().isEmpty ? en : ar;
}

List<String> pickList(bool isArabic, List<String> en, List<String> ar) {
  if (!isArabic) return en;
  return ar.isEmpty ? en : ar;
}

/// Two-digit row index used by the projects list and the experience timeline.
String twoDigitIndex(int index) => (index + 1).toString().padLeft(2, '0');
