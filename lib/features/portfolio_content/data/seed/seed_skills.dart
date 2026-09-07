import '../../domain/entities/skill_group_entity.dart';
import '../../domain/entities/tech_badge_entity.dart';

class SeedSkills {
  const SeedSkills._();

  static List<SkillGroupEntity> get groups => const <SkillGroupEntity>[
    SkillGroupEntity(
      id: 'state_management',
      labelEn: 'State Management',
      labelAr: 'إدارة الحالة',
      skills: <String>['Bloc', 'Provider'],
      order: 0,
    ),
    SkillGroupEntity(
      id: 'architecture',
      labelEn: 'Architecture',
      labelAr: 'هندسة البرمجيات',
      skills: <String>['Clean Architecture', 'MVVM', 'MVI'],
      order: 1,
    ),
    SkillGroupEntity(
      id: 'api_integration',
      labelEn: 'API Integration',
      labelAr: 'ربط الـ APIs',
      skills: <String>['RESTful APIs', 'GraphQL'],
      order: 2,
    ),
    SkillGroupEntity(
      id: 'database',
      labelEn: 'Database',
      labelAr: 'قواعد البيانات',
      skills: <String>['Firebase', 'SQLite', 'Hive'],
      order: 3,
    ),
    SkillGroupEntity(
      id: 'maps',
      labelEn: 'Maps',
      labelAr: 'الخرائط',
      skills: <String>['Live Tracking', 'Search Places', 'Polylines'],
      order: 4,
    ),
    SkillGroupEntity(
      id: 'ci_cd',
      labelEn: 'CI/CD',
      labelAr: 'التكامل والنشر المستمر',
      skills: <String>['Fastlane', 'GitHub Actions'],
      order: 5,
    ),
    SkillGroupEntity(
      id: 'other',
      labelEn: 'Other',
      labelAr: 'مهارات أخرى',
      skills: <String>[
        'OOP',
        'SOLID',
        'Design Patterns',
        'Unit Testing',
        'Flutter Flavors',
        'GitFlow',
      ],
      order: 6,
    ),
  ];

  static List<TechBadgeEntity> get techBadges => const <TechBadgeEntity>[
    TechBadgeEntity(id: 'flutter', label: 'Flutter', iconKey: 'flutter'),
    TechBadgeEntity(
      id: 'firebase',
      label: 'Firebase',
      iconKey: 'firebase',
      order: 1,
    ),
    TechBadgeEntity(id: 'bloc', label: 'Bloc', iconKey: 'bloc', order: 2),
    TechBadgeEntity(id: 'rest', label: 'REST', iconKey: 'api', order: 3),
    TechBadgeEntity(id: 'maps', label: 'Maps', iconKey: 'maps', order: 4),
    TechBadgeEntity(id: 'cicd', label: 'CI/CD', iconKey: 'cicd', order: 5),
  ];
}
