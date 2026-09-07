import 'package:freezed_annotation/freezed_annotation.dart';

part 'skill_group_entity.freezed.dart';
part 'skill_group_entity.g.dart';

/// A labelled group of skill chips. Skill names are proper nouns (Bloc, SQLite)
/// so they stay untranslated; only the group label is bilingual.
@freezed
abstract class SkillGroupEntity with _$SkillGroupEntity {
  const factory SkillGroupEntity({
    required String id,
    @Default('') String labelEn,
    @Default('') String labelAr,
    @Default(<String>[]) List<String> skills,
    @Default(0) int order,
  }) = _SkillGroupEntity;

  factory SkillGroupEntity.fromJson(Map<String, dynamic> json) =>
      _$SkillGroupEntityFromJson(json);
}
