import '../../domain/entities/section_definition.dart';

/// The seven built-in sections. Their content lives in typed entities; these
/// rows carry only nav metadata, so they can be renamed, reordered and hidden
/// in debug without touching the content.
class SeedSections {
  const SeedSections._();

  static List<SectionDefinition> get all => const <SectionDefinition>[
    SectionDefinition(
      id: BuiltInSectionIds.home,
      type: SectionType.hero,
      titleEn: 'Home',
      titleAr: 'الرئيسية',
      order: 0,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.about,
      type: SectionType.statement,
      titleEn: 'About',
      titleAr: 'نبذة عني',
      order: 1,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.experience,
      type: SectionType.timeline,
      titleEn: 'Experience',
      titleAr: 'الخبرة العملية',
      order: 2,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.projects,
      type: SectionType.listRows,
      titleEn: 'Projects',
      titleAr: 'المشاريع',
      order: 3,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.certificates,
      type: SectionType.imageGrid,
      titleEn: 'Certificates',
      titleAr: 'الشهادات',
      order: 4,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.pricing,
      type: SectionType.pricing,
      titleEn: 'Pricing',
      titleAr: 'الأسعار',
      order: 5,
    ),
    SectionDefinition(
      id: BuiltInSectionIds.contact,
      type: SectionType.contact,
      titleEn: 'Contact',
      titleAr: 'تواصل معي',
      order: 6,
    ),
  ];
}
