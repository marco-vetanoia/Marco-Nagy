// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'showcase_panel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShowcasePanel _$ShowcasePanelFromJson(Map<String, dynamic> json) =>
    _ShowcasePanel(
      id: json['id'] as String,
      format:
          $enumDecodeNullable(_$ShowcaseFormatEnumMap, json['format']) ??
          ShowcaseFormat.screenshot,
      backgroundOverride: json['backgroundOverride'] == null
          ? null
          : ShotBackground.fromJson(
              json['backgroundOverride'] as Map<String, dynamic>,
            ),
      shots:
          (json['shots'] as List<dynamic>?)
              ?.map((e) => MediaShot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <MediaShot>[],
      captionEn: json['captionEn'] as String? ?? '',
      captionAr: json['captionAr'] as String? ?? '',
      subtitleEn: json['subtitleEn'] as String? ?? '',
      subtitleAr: json['subtitleAr'] as String? ?? '',
      captionPlacement:
          $enumDecodeNullable(
            _$CaptionPlacementEnumMap,
            json['captionPlacement'],
          ) ??
          CaptionPlacement.top,
      captionColorHex: json['captionColorHex'] as String? ?? 'FFFFFF',
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ShowcasePanelToJson(_ShowcasePanel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'format': _$ShowcaseFormatEnumMap[instance.format]!,
      'backgroundOverride': instance.backgroundOverride,
      'shots': instance.shots,
      'captionEn': instance.captionEn,
      'captionAr': instance.captionAr,
      'subtitleEn': instance.subtitleEn,
      'subtitleAr': instance.subtitleAr,
      'captionPlacement': _$CaptionPlacementEnumMap[instance.captionPlacement]!,
      'captionColorHex': instance.captionColorHex,
      'order': instance.order,
    };

const _$ShowcaseFormatEnumMap = {
  ShowcaseFormat.screenshot: 'screenshot',
  ShowcaseFormat.featureGraphic: 'featureGraphic',
  ShowcaseFormat.free: 'free',
};

const _$CaptionPlacementEnumMap = {
  CaptionPlacement.top: 'top',
  CaptionPlacement.bottom: 'bottom',
  CaptionPlacement.start: 'start',
  CaptionPlacement.end: 'end',
  CaptionPlacement.none: 'none',
};
