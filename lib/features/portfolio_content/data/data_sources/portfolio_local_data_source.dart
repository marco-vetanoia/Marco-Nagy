import '../../domain/entities/certificate.dart';
import '../../domain/entities/custom_section_item.dart';
import '../../domain/entities/personal_project.dart';
import '../../domain/entities/pricing_add_on.dart';
import '../../domain/entities/pricing_package.dart';
import '../../domain/entities/section_definition.dart';
import '../../domain/entities/site_content.dart';
import '../../domain/entities/skill_group_entity.dart';
import '../../domain/entities/tech_badge_entity.dart';
import '../../domain/entities/work_history_entry.dart';

/// The app's only persistence contract. Reads are synchronous because
/// shared_preferences keeps everything in memory once loaded; writes are async.
abstract class PortfolioLocalDataSource {
  /// Writes seed content on first launch only. Once the seed marker is set,
  /// deleting every item in debug is respected rather than undone.
  Future<void> seedIfEmpty();

  /// Discards local edits and restores the seeded content.
  Future<void> resetToSeed();

  /// Serializes every collection into one JSON document, in the exact shape
  /// `assets/content/portfolio_content.json` must have. Debug-only: feeds the
  /// admin "Export content" action so a local editing session can be
  /// published by saving the result over that asset file.
  Future<String> exportContent();

  // Built-in section content.

  List<PersonalProject> getProjects();
  Future<void> saveProjects(List<PersonalProject> projects);

  List<Certificate> getCertificates();
  Future<void> saveCertificates(List<Certificate> certificates);

  List<WorkHistoryEntry> getWorkHistory();
  Future<void> saveWorkHistory(List<WorkHistoryEntry> entries);

  List<PricingPackage> getPricingPackages();
  Future<void> savePricingPackages(List<PricingPackage> packages);

  List<PricingAddOn> getPricingAddOns();
  Future<void> savePricingAddOns(List<PricingAddOn> addOns);

  // Site-wide content.

  SiteContent getSiteContent();
  Future<void> saveSiteContent(SiteContent content);

  List<SkillGroupEntity> getSkillGroups();
  Future<void> saveSkillGroups(List<SkillGroupEntity> groups);

  List<TechBadgeEntity> getTechBadges();
  Future<void> saveTechBadges(List<TechBadgeEntity> badges);

  // Section registry + custom section content.

  List<SectionDefinition> getSections();
  Future<void> saveSections(List<SectionDefinition> sections);

  List<CustomSectionItem> getCustomItems(String sectionId);
  Future<void> saveCustomItems(String sectionId, List<CustomSectionItem> items);

  /// Drops a custom section's items along with the section itself.
  Future<void> deleteCustomItems(String sectionId);
}
