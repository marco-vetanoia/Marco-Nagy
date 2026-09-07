// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SectionDefinition _$SectionDefinitionFromJson(Map<String, dynamic> json) =>
    _SectionDefinition(
      id: json['id'] as String,
      type: $enumDecode(_$SectionTypeEnumMap, json['type']),
      kind:
          $enumDecodeNullable(_$SectionKindEnumMap, json['kind']) ??
          SectionKind.builtIn,
      titleEn: json['titleEn'] as String? ?? '',
      titleAr: json['titleAr'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
      visible: json['visible'] as bool? ?? true,
    );

Map<String, dynamic> _$SectionDefinitionToJson(_SectionDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': _$SectionTypeEnumMap[instance.type]!,
      'kind': _$SectionKindEnumMap[instance.kind]!,
      'titleEn': instance.titleEn,
      'titleAr': instance.titleAr,
      'order': instance.order,
      'visible': instance.visible,
    };

const _$SectionTypeEnumMap = {
  SectionType.hero: 'hero',
  SectionType.statement: 'statement',
  SectionType.timeline: 'timeline',
  SectionType.listRows: 'listRows',
  SectionType.imageGrid: 'imageGrid',
  SectionType.chips: 'chips',
  SectionType.pricing: 'pricing',
  SectionType.contact: 'contact',
};

const _$SectionKindEnumMap = {
  SectionKind.builtIn: 'builtIn',
  SectionKind.custom: 'custom',
};
