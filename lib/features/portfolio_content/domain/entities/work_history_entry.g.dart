// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_history_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkHistoryEntry _$WorkHistoryEntryFromJson(
  Map<String, dynamic> json,
) => _WorkHistoryEntry(
  id: json['id'] as String,
  company: json['company'] as String,
  role: json['role'] as String? ?? '',
  roleAr: json['roleAr'] as String? ?? '',
  startDate: json['startDate'] as String? ?? '',
  endDate: json['endDate'] as String? ?? '',
  location: json['location'] as String? ?? '',
  locationAr: json['locationAr'] as String? ?? '',
  bullets:
      (json['bullets'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  bulletsAr:
      (json['bulletsAr'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$WorkHistoryEntryToJson(_WorkHistoryEntry instance) =>
    <String, dynamic>{
      'id': instance.id,
      'company': instance.company,
      'role': instance.role,
      'roleAr': instance.roleAr,
      'startDate': instance.startDate,
      'endDate': instance.endDate,
      'location': instance.location,
      'locationAr': instance.locationAr,
      'bullets': instance.bullets,
      'bulletsAr': instance.bulletsAr,
      'order': instance.order,
    };
