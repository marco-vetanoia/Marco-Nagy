// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'certificate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Certificate _$CertificateFromJson(Map<String, dynamic> json) => _Certificate(
  id: json['id'] as String,
  title: json['title'] as String,
  titleAr: json['titleAr'] as String? ?? '',
  provider: json['provider'] as String? ?? '',
  providerAr: json['providerAr'] as String? ?? '',
  year: json['year'] as String? ?? '',
  location: json['location'] as String? ?? '',
  locationAr: json['locationAr'] as String? ?? '',
  imageAsset: json['imageAsset'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CertificateToJson(_Certificate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'titleAr': instance.titleAr,
      'provider': instance.provider,
      'providerAr': instance.providerAr,
      'year': instance.year,
      'location': instance.location,
      'locationAr': instance.locationAr,
      'imageAsset': instance.imageAsset,
      'order': instance.order,
    };
