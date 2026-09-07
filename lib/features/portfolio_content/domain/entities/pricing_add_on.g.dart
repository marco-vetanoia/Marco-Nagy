// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pricing_add_on.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PricingAddOn _$PricingAddOnFromJson(Map<String, dynamic> json) =>
    _PricingAddOn(
      id: json['id'] as String,
      name: json['name'] as String,
      nameAr: json['nameAr'] as String? ?? '',
      unitPrice: (json['unitPrice'] as num?)?.toInt() ?? 0,
      unitTimeDays: (json['unitTimeDays'] as num?)?.toInt() ?? 0,
      hasCounter: json['hasCounter'] as bool? ?? false,
      category: json['category'] as String? ?? '',
      categoryAr: json['categoryAr'] as String? ?? '',
      order: (json['order'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$PricingAddOnToJson(_PricingAddOn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameAr': instance.nameAr,
      'unitPrice': instance.unitPrice,
      'unitTimeDays': instance.unitTimeDays,
      'hasCounter': instance.hasCounter,
      'category': instance.category,
      'categoryAr': instance.categoryAr,
      'order': instance.order,
    };
