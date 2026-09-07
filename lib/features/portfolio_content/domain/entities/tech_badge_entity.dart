import 'package:freezed_annotation/freezed_annotation.dart';

part 'tech_badge_entity.freezed.dart';
part 'tech_badge_entity.g.dart';

/// A small tech badge orbiting the hero photo.
///
/// [iconKey] indexes into `AppIconCatalog` rather than storing an IconData:
/// a dynamically-constructed IconData defeats `--tree-shake-icons` and breaks
/// the release web build.
@freezed
abstract class TechBadgeEntity with _$TechBadgeEntity {
  const factory TechBadgeEntity({
    required String id,
    @Default('') String label,
    @Default('flutter') String iconKey,
    @Default(0) int order,
  }) = _TechBadgeEntity;

  factory TechBadgeEntity.fromJson(Map<String, dynamic> json) =>
      _$TechBadgeEntityFromJson(json);
}
