// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'skill_group_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SkillGroupEntity _$SkillGroupEntityFromJson(Map<String, dynamic> json) =>
    _SkillGroupEntity(
      id: json['id'] as String,
      labelEn: json['labelEn'] as String? ?? '',
      labelAr: json['labelAr'] as String? ?? '',
      skills:
          (json['skills'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$SkillGroupEntityToJson(_SkillGroupEntity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'labelEn': instance.labelEn,
      'labelAr': instance.labelAr,
      'skills': instance.skills,
      'order': instance.order,
    };
