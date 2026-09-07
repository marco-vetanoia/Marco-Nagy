// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tech_badge_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TechBadgeEntity _$TechBadgeEntityFromJson(Map<String, dynamic> json) =>
    _TechBadgeEntity(
      id: json['id'] as String,
      label: json['label'] as String? ?? '',
      iconKey: json['iconKey'] as String? ?? 'flutter',
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$TechBadgeEntityToJson(_TechBadgeEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'iconKey': instance.iconKey,
      'order': instance.order,
    };
