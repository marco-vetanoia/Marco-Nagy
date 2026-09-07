/// Admin forms edit list fields as one-per-line text. This is the single
/// place that conversion happens, so every form treats blanks the same way.
class TextListConverter {
  const TextListConverter._();

  static String toText(List<String> values) => values.join('\n');

  static List<String> toList(String text) => text
      .split('\n')
      .map((line) => line.trim())
      .where((line) => line.isNotEmpty)
      .toList(growable: false);
}
