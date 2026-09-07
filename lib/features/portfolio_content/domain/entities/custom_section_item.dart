import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_ref.dart';

part 'custom_section_item.freezed.dart';
part 'custom_section_item.g.dart';

/// One entry inside a custom section.
///
/// Deliberately a superset: every field is optional, and each [SectionType]
/// decides which subset its form edits and its renderer reads. This keeps one
/// storage shape and one form engine for all five custom-capable types.
@freezed
abstract class CustomSectionItem with _$CustomSectionItem {
  const factory CustomSectionItem({
    required String id,
    required String sectionId,

    // Used by every type.
    @Default('') String titleEn,
    @Default('') String titleAr,

    // listRows: role/subtitle · timeline: role · imageGrid: provider
    @Default('') String subtitleEn,
    @Default('') String subtitleAr,

    // listRows / statement / imageGrid
    @Default('') String descriptionEn,
    @Default('') String descriptionAr,

    // timeline achievements · listRows feature list · chips entries
    @Default(<String>[]) List<String> bulletsEn,
    @Default(<String>[]) List<String> bulletsAr,

    // listRows category tag · imageGrid issuer label
    @Default('') String tagEn,
    @Default('') String tagAr,

    // timeline range · imageGrid year
    @Default('') String dateStart,
    @Default('') String dateEnd,
    @Default('') String year,

    @Default(<ImageRef>[]) List<ImageRef> images,

    /// Hover accent for listRows, as a 6-digit RRGGBB hex string.
    @Default('4CC9F0') String accentHex,

    /// Optional outward link opened in a new tab.
    @Default('') String linkUrl,
    @Default(0) int order,
  }) = _CustomSectionItem;

  const CustomSectionItem._();

  factory CustomSectionItem.fromJson(Map<String, dynamic> json) =>
      _$CustomSectionItemFromJson(json);

  bool get isCurrent => dateEnd.trim().isEmpty;
}
