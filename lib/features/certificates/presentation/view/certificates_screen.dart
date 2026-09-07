import 'package:flutter/material.dart';

import '../../../../core/widgets/chrome/portfolio_scaffold.dart';
import '../../../portfolio_content/domain/entities/section_definition.dart';
import 'certificates_section.dart';

/// Certificates on its own screen, reached from the nav.
///
/// Entering the route builds the section fresh, so its reveal cascade plays
/// from the top down every visit — no replay machinery needed.
class CertificatesScreen extends StatelessWidget {
  const CertificatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const PortfolioScaffold(
      activeSectionId: BuiltInSectionIds.certificates,
      children: <Widget>[CertificatesSection()],
    );
  }
}
