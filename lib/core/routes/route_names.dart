import '../../features/portfolio_content/domain/entities/section_definition.dart';

/// Route names are also the web URLs, so keep them lowercase and stable.
class RouteNames {
  const RouteNames._();

  /// The launch screen, shown while the app hands off from the native splash.
  static const String splash = '/';
  static const String home = '/home';
  static const String about = '/about';
  static const String experience = '/experience';
  static const String projects = '/projects';
  static const String projectDetail = '/projects/detail';
  static const String certificates = '/certificates';
  static const String pricing = '/pricing';
  static const String contact = '/contact';

  /// Debug-only content manager. Never registered in a release build.
  static const String admin = '/admin';

  /// Custom sections all render through one route, keyed by section id.
  static const String customSection = '/section';

  static const Map<String, String> _builtInSectionRoutes = <String, String>{
    BuiltInSectionIds.home: home,
    BuiltInSectionIds.about: about,
    BuiltInSectionIds.experience: experience,
    BuiltInSectionIds.projects: projects,
    BuiltInSectionIds.certificates: certificates,
    BuiltInSectionIds.pricing: pricing,
    BuiltInSectionIds.contact: contact,
  };

  /// Resolves a built-in section id to its route.
  static String forSectionId(String sectionId) =>
      _builtInSectionRoutes[sectionId] ?? home;

  /// Resolves any [SectionDefinition] to the path the nav should push.
  static String forSection(SectionDefinition section) {
    if (section.isCustom) return '$customSection/${section.id}';
    return _builtInSectionRoutes[section.id] ?? home;
  }

  /// Reverses [forSection] for a custom-section path.
  static String? customSectionIdOf(String routePath) {
    const prefix = '$customSection/';
    if (!routePath.startsWith(prefix)) return null;
    final id = routePath.substring(prefix.length);
    return id.isEmpty ? null : id;
  }
}
