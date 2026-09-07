// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricingPackage _$PricingPackageFromJson(Map<String, dynamic> json) =>
    _PricingPackage(
      id: json['id'] as String,
      name: json['name'] as String,
      nameAr: json['nameAr'] as String? ?? '',
      basePrice: (json['basePrice'] as num?)?.toInt() ?? 0,
      timelineLabel: json['timelineLabel'] as String? ?? '',
      timelineLabelAr: json['timelineLabelAr'] as String? ?? '',
      description: json['description'] as String? ?? '',
      descriptionAr: json['descriptionAr'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PricingPackageToJson(_PricingPackage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameAr': instance.nameAr,
      'basePrice': instance.basePrice,
      'timelineLabel': instance.timelineLabel,
      'timelineLabelAr': instance.timelineLabelAr,
      'description': instance.description,
      'descriptionAr': instance.descriptionAr,
      'order': instance.order,
    };
