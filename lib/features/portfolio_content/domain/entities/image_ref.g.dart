// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_ref.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ImageRef _$ImageRefFromJson(Map<String, dynamic> json) => _ImageRef(
  kind:
      $enumDecodeNullable(_$ImageSourceKindEnumMap, json['kind']) ??
      ImageSourceKind.asset,
  value: json['value'] as String? ?? '',
);

Map<String, dynamic> _$ImageRefToJson(_ImageRef instance) => <String, dynamic>{
  'kind': _$ImageSourceKindEnumMap[instance.kind]!,
  'value': instance.value,
};

const _$ImageSourceKindEnumMap = {
  ImageSourceKind.asset: 'asset',
  ImageSourceKind.network: 'network',
  ImageSourceKind.embedded: 'embedded',
};
