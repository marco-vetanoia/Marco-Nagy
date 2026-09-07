import 'dart:convert';

import 'package:injectable/injectable.dart';

import '../../../../core/services/shared_preference/shared_pref_keys.dart';
import '../../../../core/services/shared_preference/shared_preference_helper.dart';
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
import '../seed/seed_certificates.dart';
import '../seed/seed_pricing.dart';
import '../seed/seed_projects.dart';
import '../seed/seed_sections.dart';
import '../seed/seed_site_content.dart';
import '../seed/seed_skills.dart';
import '../seed/seed_work_history.dart';
import 'portfolio_local_data_source.dart';

@LazySingleton(as: PortfolioLocalDataSource)
class PortfolioLocalDataSourceImpl implements PortfolioLocalDataSource {
  PortfolioLocalDataSourceImpl(this._prefs);

  final SharedPrefHelper _prefs;

  @override
  Future<void> seedIfEmpty() async {
    if (_prefs.getBool(key: SharedPrefKeys.seeded)) return;
    await resetToSeed();
  }

  @override
  Future<void> resetToSeed() async {
    // Custom sections are a debug-time creation, so a reset clears them
    // entirely rather than trying to merge them with the seed.
    for (final key in _prefs.keysWithPrefix(
      SharedPrefKeys.customSectionItemsPrefix,
    )) {
      await _prefs.removePreference(key: key);
    }

    await saveProjects(SeedProjects.all);
    await saveCertificates(SeedCertificates.all);
    await saveWorkHistory(SeedWorkHistory.all);
    await savePricingPackages(SeedPricing.packages);
    await savePricingAddOns(SeedPricing.addOns);
    await saveSiteContent(SeedSiteContent.value);
    await saveSkillGroups(SeedSkills.groups);
    await saveTechBadges(SeedSkills.techBadges);
    await saveSections(SeedSections.all);
    await _prefs.setBool(key: SharedPrefKeys.seeded, value: true);
  }

  // Shared JSON helpers -------------------------------------------------------

  /// A corrupt or schema-drifted payload falls back rather than leaving the
  /// visitor on an empty page.
  List<T> _readList<T>(
    String key,
    T Function(Map<String, dynamic>) fromJson,
    List<T> fallback,
  ) {
    final raw = _prefs.containPreference(key: key)
        ? _prefs.getString(key: key)
        : null;
    if (raw == null || raw.trim().isEmpty) return fallback;
    try {
      final decoded = json.decode(raw) as List<dynamic>;
      return decoded
          .map((e) => fromJson(Map<String, dynamic>.from(e as Map)))
          .toList(growable: false);
    } on Object {
      return fallback;
    }
  }

  Future<void> _writeList<T>(
    String key,
    List<T> items,
    Map<String, dynamic> Function(T) toJson,
  ) {
    return _prefs.setString(
      key: key,
      stringValue: json.encode(items.map(toJson).toList()),
    );
  }

  T _readObject<T>(
    String key,
    T Function(Map<String, dynamic>) fromJson,
    T fallback,
  ) {
    final raw = _prefs.containPreference(key: key)
        ? _prefs.getString(key: key)
        : null;
    if (raw == null || raw.trim().isEmpty) return fallback;
    try {
      return fromJson(Map<String, dynamic>.from(json.decode(raw) as Map));
    } on Object {
      return fallback;
    }
  }

  Future<void> _writeObject(String key, Map<String, dynamic> value) =>
      _prefs.setString(key: key, stringValue: json.encode(value));

  // Built-in section content --------------------------------------------------

  @override
  List<PersonalProject> getProjects() => _readList(
    SharedPrefKeys.projects,
    PersonalProject.fromJson,
    const <PersonalProject>[],
  );

  @override
  Future<void> saveProjects(List<PersonalProject> projects) =>
      _writeList(SharedPrefKeys.projects, projects, (p) => p.toJson());

  @override
  List<Certificate> getCertificates() => _readList(
    SharedPrefKeys.certificates,
    Certificate.fromJson,
    const <Certificate>[],
  );

  @override
  Future<void> saveCertificates(List<Certificate> certificates) =>
      _writeList(SharedPrefKeys.certificates, certificates, (c) => c.toJson());

  @override
  List<WorkHistoryEntry> getWorkHistory() => _readList(
    SharedPrefKeys.workHistory,
    WorkHistoryEntry.fromJson,
    const <WorkHistoryEntry>[],
  );

  @override
  Future<void> saveWorkHistory(List<WorkHistoryEntry> entries) =>
      _writeList(SharedPrefKeys.workHistory, entries, (e) => e.toJson());

  @override
  List<PricingPackage> getPricingPackages() => _readList(
    SharedPrefKeys.pricingPackages,
    PricingPackage.fromJson,
    const <PricingPackage>[],
  );

  @override
  Future<void> savePricingPackages(List<PricingPackage> packages) =>
      _writeList(SharedPrefKeys.pricingPackages, packages, (p) => p.toJson());

  @override
  List<PricingAddOn> getPricingAddOns() => _readList(
    SharedPrefKeys.pricingAddOns,
    PricingAddOn.fromJson,
    const <PricingAddOn>[],
  );

  @override
  Future<void> savePricingAddOns(List<PricingAddOn> addOns) =>
      _writeList(SharedPrefKeys.pricingAddOns, addOns, (a) => a.toJson());

  // Site-wide content ---------------------------------------------------------

  @override
  SiteContent getSiteContent() => _readObject(
    SharedPrefKeys.siteContent,
    SiteContent.fromJson,
    SeedSiteContent.value,
  );

  @override
  Future<void> saveSiteContent(SiteContent content) =>
      _writeObject(SharedPrefKeys.siteContent, content.toJson());

  @override
  List<SkillGroupEntity> getSkillGroups() => _readList(
    SharedPrefKeys.skillGroups,
    SkillGroupEntity.fromJson,
    const <SkillGroupEntity>[],
  );

  @override
  Future<void> saveSkillGroups(List<SkillGroupEntity> groups) =>
      _writeList(SharedPrefKeys.skillGroups, groups, (g) => g.toJson());

  @override
  List<TechBadgeEntity> getTechBadges() => _readList(
    SharedPrefKeys.techBadges,
    TechBadgeEntity.fromJson,
    const <TechBadgeEntity>[],
  );

  @override
  Future<void> saveTechBadges(List<TechBadgeEntity> badges) =>
      _writeList(SharedPrefKeys.techBadges, badges, (b) => b.toJson());

  // Section registry ----------------------------------------------------------

  @override
  List<SectionDefinition> getSections() => _readList(
    SharedPrefKeys.sectionDefinitions,
    SectionDefinition.fromJson,
    const <SectionDefinition>[],
  );

  @override
  Future<void> saveSections(List<SectionDefinition> sections) => _writeList(
    SharedPrefKeys.sectionDefinitions,
    sections,
    (s) => s.toJson(),
  );

  @override
  List<CustomSectionItem> getCustomItems(String sectionId) => _readList(
    SharedPrefKeys.customSectionItems(sectionId),
    CustomSectionItem.fromJson,
    const <CustomSectionItem>[],
  );

  @override
  Future<void> saveCustomItems(
    String sectionId,
    List<CustomSectionItem> items,
  ) => _writeList(
    SharedPrefKeys.customSectionItems(sectionId),
    items,
    (i) => i.toJson(),
  );

  @override
  Future<void> deleteCustomItems(String sectionId) => _prefs.removePreference(
    key: SharedPrefKeys.customSectionItems(sectionId),
  );
}
