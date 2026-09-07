import 'package:flutter/material.dart';

import '../../../../core/widgets/chrome/portfolio_scaffold.dart';
import '../../../portfolio_content/domain/entities/section_definition.dart';
import '../widgets/hero_section.dart';

/// The landing screen: hero only, with the shared nav and footer around it.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioScaffold(
      activeSectionId: BuiltInSectionIds.home,
      children: <Widget>[HeroSection()],
    );
  }
}
