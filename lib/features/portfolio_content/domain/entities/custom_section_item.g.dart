// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_section_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CustomSectionItem _$CustomSectionItemFromJson(
  Map<String, dynamic> json,
) => _CustomSectionItem(
  id: json['id'] as String,
  sectionId: json['sectionId'] as String,
  titleEn: json['titleEn'] as String? ?? '',
  titleAr: json['titleAr'] as String? ?? '',
  subtitleEn: json['subtitleEn'] as String? ?? '',
  subtitleAr: json['subtitleAr'] as String? ?? '',
  descriptionEn: json['descriptionEn'] as String? ?? '',
  descriptionAr: json['descriptionAr'] as String? ?? '',
  bulletsEn:
      (json['bulletsEn'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  bulletsAr:
      (json['bulletsAr'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  tagEn: json['tagEn'] as String? ?? '',
  tagAr: json['tagAr'] as String? ?? '',
  dateStart: json['dateStart'] as String? ?? '',
  dateEnd: json['dateEnd'] as String? ?? '',
  year: json['year'] as String? ?? '',
  images:
      (json['images'] as List<dynamic>?)
          ?.map((e) => ImageRef.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <ImageRef>[],
  accentHex: json['accentHex'] as String? ?? '4CC9F0',
  linkUrl: json['linkUrl'] as String? ?? '',
  order: (json['order'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CustomSectionItemToJson(_CustomSectionItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sectionId': instance.sectionId,
      'titleEn': instance.titleEn,
      'titleAr': instance.titleAr,
      'subtitleEn': instance.subtitleEn,
      'subtitleAr': instance.subtitleAr,
      'descriptionEn': instance.descriptionEn,
      'descriptionAr': instance.descriptionAr,
      'bulletsEn': instance.bulletsEn,
      'bulletsAr': instance.bulletsAr,
      'tagEn': instance.tagEn,
      'tagAr': instance.tagAr,
      'dateStart': instance.dateStart,
      'dateEnd': instance.dateEnd,
      'year': instance.year,
      'images': instance.images,
      'accentHex': instance.accentHex,
      'linkUrl': instance.linkUrl,
      'order': instance.order,
    };
