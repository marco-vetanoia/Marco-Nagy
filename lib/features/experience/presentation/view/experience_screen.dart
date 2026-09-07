import 'package:flutter/material.dart';

import '../../../../core/widgets/chrome/portfolio_scaffold.dart';
import '../../../portfolio_content/domain/entities/section_definition.dart';
import 'experience_section.dart';

/// Experience on its own screen, reached from the nav.
///
/// Entering the route builds the section fresh, so its reveal cascade plays
/// from the top down every visit — no replay machinery needed.
class ExperienceScreen extends StatelessWidget {
  const ExperienceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioScaffold(
      activeSectionId: BuiltInSectionIds.experience,
      children: <Widget>[ExperienceSection()],
    );
  }
}
