import '../localization/lang_keys.dart';

/// One grouped skills chip block. [labelKey] is a [LangKeys] entry; the skill
/// names themselves are proper nouns and stay untranslated in both languages.
class SkillGroup {
  const SkillGroup({required this.labelKey, required this.skills});

  final String labelKey;
  final List<String> skills;

  static const List<SkillGroup> all = <SkillGroup>[
    SkillGroup(
      labelKey: LangKeys.skillsStateManagement,
      skills: <String>['Bloc', 'Provider'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsArchitecture,
      skills: <String>['Clean Architecture', 'MVVM', 'MVI'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsApiIntegration,
      skills: <String>['RESTful APIs', 'GraphQL'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsDatabase,
      skills: <String>['Firebase', 'SQLite', 'Hive'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsMaps,
      skills: <String>['Live Tracking', 'Search Places', 'Polylines'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsCiCd,
      skills: <String>['Fastlane', 'GitHub Actions'],
    ),
    SkillGroup(
      labelKey: LangKeys.skillsOther,
      skills: <String>[
        'OOP',
        'SOLID',
        'Design Patterns',
        'Unit Testing',
        'Flutter Flavors',
        'GitFlow',
      ],
    ),
  ];
}
