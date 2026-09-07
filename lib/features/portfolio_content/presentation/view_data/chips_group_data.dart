import '../../domain/entities/custom_section_item.dart';
import '../../domain/entities/skill_group_entity.dart';
import 'localized_pick.dart';

/// A labelled row of chips — the Skills block, or any custom `chips` section.
class ChipsGroupData {
  const ChipsGroupData({
    required this.id,
    required this.label,
    this.chips = const <String>[],
  });

  final String id;
  final String label;
  final List<String> chips;

  factory ChipsGroupData.fromSkillGroup(SkillGroupEntity group, bool isArabic) {
    return ChipsGroupData(
      id: group.id,
      label: pickText(isArabic, group.labelEn, group.labelAr),
      chips: group.skills,
    );
  }

  factory ChipsGroupData.fromCustomItem(CustomSectionItem item, bool isArabic) {
    return ChipsGroupData(
      id: item.id,
      label: pickText(isArabic, item.titleEn, item.titleAr),
      chips: pickList(isArabic, item.bulletsEn, item.bulletsAr),
    );
  }
}
