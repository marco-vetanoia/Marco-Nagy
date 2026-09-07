import '../../../features/portfolio_content/domain/entities/section_definition.dart';
import '../../localization/lang_keys.dart';

/// One entry in the top nav. Order here is the order on screen and the order
/// sections are stacked down the single page.
class NavItem {
  const NavItem({required this.labelKey, required this.sectionId});

  final String labelKey;

  /// Matches the key used for that section's scroll target.
  final String sectionId;

  static const List<NavItem> all = <NavItem>[
    NavItem(labelKey: LangKeys.navHome, sectionId: BuiltInSectionIds.home),
    NavItem(labelKey: LangKeys.navAbout, sectionId: BuiltInSectionIds.about),
    NavItem(
      labelKey: LangKeys.navExperience,
      sectionId: BuiltInSectionIds.experience,
    ),
    NavItem(
      labelKey: LangKeys.navProjects,
      sectionId: BuiltInSectionIds.projects,
    ),
    NavItem(
      labelKey: LangKeys.navCertificates,
      sectionId: BuiltInSectionIds.certificates,
    ),
    NavItem(
      labelKey: LangKeys.navPricing,
      sectionId: BuiltInSectionIds.pricing,
    ),
    NavItem(
      labelKey: LangKeys.navContact,
      sectionId: BuiltInSectionIds.contact,
    ),
  ];
}
