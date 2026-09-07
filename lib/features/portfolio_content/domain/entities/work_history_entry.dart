import 'package:freezed_annotation/freezed_annotation.dart';

part 'work_history_entry.freezed.dart';
part 'work_history_entry.g.dart';

/// One role in the experience timeline. [endDate] empty means "present".
@freezed
abstract class WorkHistoryEntry with _$WorkHistoryEntry {
  const factory WorkHistoryEntry({
    required String id,
    required String company,
    @Default('') String role,
    @Default('') String roleAr,
    @Default('') String startDate,
    @Default('') String endDate,
    @Default('') String location,
    @Default('') String locationAr,
    @Default(<String>[]) List<String> bullets,
    @Default(<String>[]) List<String> bulletsAr,
    @Default(0) int order,
  }) = _WorkHistoryEntry;

  const WorkHistoryEntry._();

  factory WorkHistoryEntry.fromJson(Map<String, dynamic> json) =>
      _$WorkHistoryEntryFromJson(json);

  bool get isCurrent => endDate.trim().isEmpty;
}
