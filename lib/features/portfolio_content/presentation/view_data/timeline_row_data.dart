import '../../domain/entities/custom_section_item.dart';
import '../../domain/entities/work_history_entry.dart';
import 'localized_pick.dart';

/// One entry in a two-column timeline.
class TimelineRowData {
  const TimelineRowData({
    required this.id,
    required this.index,
    required this.title,
    this.subtitle = '',
    this.dateRange = '',
    this.location = '',
    this.bullets = const <String>[],
  });

  final String id;

  /// Pre-formatted "/01" index.
  final String index;

  /// Company, or the custom item's title.
  final String title;

  /// Role.
  final String subtitle;
  final String dateRange;
  final String location;
  final List<String> bullets;

  /// [presentLabel] is passed in already translated so this stays free of
  /// BuildContext.
  static String _range(String start, String end, String presentLabel) {
    final finish = end.trim().isEmpty ? presentLabel : end;
    if (start.trim().isEmpty) return finish;
    return '$start — $finish';
  }

  factory TimelineRowData.fromWorkHistory(
    WorkHistoryEntry entry,
    int position,
    bool isArabic,
    String presentLabel,
  ) {
    return TimelineRowData(
      id: entry.id,
      index: '/${twoDigitIndex(position)}',
      title: entry.company,
      subtitle: pickText(isArabic, entry.role, entry.roleAr),
      dateRange: _range(entry.startDate, entry.endDate, presentLabel),
      location: pickText(isArabic, entry.location, entry.locationAr),
      bullets: pickList(isArabic, entry.bullets, entry.bulletsAr),
    );
  }

  factory TimelineRowData.fromCustomItem(
    CustomSectionItem item,
    int position,
    bool isArabic,
    String presentLabel,
  ) {
    return TimelineRowData(
      id: item.id,
      index: '/${twoDigitIndex(position)}',
      title: pickText(isArabic, item.titleEn, item.titleAr),
      subtitle: pickText(isArabic, item.subtitleEn, item.subtitleAr),
      dateRange: _range(item.dateStart, item.dateEnd, presentLabel),
      location: pickText(isArabic, item.tagEn, item.tagAr),
      bullets: pickList(isArabic, item.bulletsEn, item.bulletsAr),
    );
  }
}
