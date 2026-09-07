import 'package:flutter/material.dart';

import '../../features/about/presentation/view/about_screen.dart';
import '../../features/certificates/presentation/view/certificates_screen.dart';
import '../../features/contact/presentation/view/contact_screen.dart';
import '../../features/experience/presentation/view/experience_screen.dart';
import '../../features/home/presentation/view/home_screen.dart';
import '../../features/portfolio_content/presentation/view_data/list_row_data.dart';
import '../../features/pricing/presentation/view/pricing_screen.dart';
import '../../features/projects/presentation/view/project_detail_view.dart';
import '../../features/projects/presentation/view/projects_screen.dart';
import '../../features/splash/presentation/view/splash_view.dart';
import 'base_routes.dart';
import 'route_names.dart';

/// One screen per section, each its own URL — the same shape as the reference
/// site, where selecting a nav item changes the address rather than scrolling.
class AppRoutes {
  const AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return BaseRoute<dynamic>(page: _pageFor(settings), settings: settings);
  }

  static Widget _pageFor(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.splash:
        return const SplashView();
      case RouteNames.about:
        return const AboutScreen();
      case RouteNames.experience:
        return const ExperienceScreen();
      case RouteNames.projects:
        return const ProjectsScreen();
      case RouteNames.certificates:
        return const CertificatesScreen();
      case RouteNames.pricing:
        return const PricingScreen();
      case RouteNames.contact:
        return const ContactScreen();
      case RouteNames.projectDetail:
        final data = settings.arguments;
        // Reached without its argument — a hand-typed URL on web, say — falls
        // back to the list rather than crashing.
        if (data is! ListRowData) return const ProjectsScreen();
        return ProjectDetailView(data: data);
      case RouteNames.home:
      default:
        return const HomeScreen();
    }
  }
}
