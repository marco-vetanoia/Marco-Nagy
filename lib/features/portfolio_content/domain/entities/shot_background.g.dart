// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shot_background.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ShotBackground _$ShotBackgroundFromJson(Map<String, dynamic> json) =>
    _ShotBackground(
      style:
          $enumDecodeNullable(_$ShotBackgroundStyleEnumMap, json['style']) ??
          ShotBackgroundStyle.none,
      colorHex: json['colorHex'] as String? ?? '0A1533',
      colorHex2: json['colorHex2'] as String? ?? '1B3F8F',
      image: json['image'] == null
          ? const ImageRef()
          : ImageRef.fromJson(json['image'] as Map<String, dynamic>),
      overlayOpacity: (json['overlayOpacity'] as num?)?.toDouble() ?? 0.25,
      blurSigma: (json['blurSigma'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$ShotBackgroundToJson(_ShotBackground instance) =>
    <String, dynamic>{
      'style': _$ShotBackgroundStyleEnumMap[instance.style]!,
      'colorHex': instance.colorHex,
      'colorHex2': instance.colorHex2,
      'image': instance.image,
      'overlayOpacity': instance.overlayOpacity,
      'blurSigma': instance.blurSigma,
    };

const _$ShotBackgroundStyleEnumMap = {
  ShotBackgroundStyle.none: 'none',
  ShotBackgroundStyle.solid: 'solid',
  ShotBackgroundStyle.linearGradient: 'linearGradient',
  ShotBackgroundStyle.radialGradient: 'radialGradient',
  ShotBackgroundStyle.blob: 'blob',
  ShotBackgroundStyle.image: 'image',
};
