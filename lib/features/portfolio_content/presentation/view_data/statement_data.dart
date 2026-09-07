import '../../domain/entities/custom_section_item.dart';
import '../../domain/entities/site_content.dart';
import 'localized_pick.dart';

/// Large statement-style copy — the About column, or any custom `statement`
/// section.
class StatementData {
  const StatementData({
    required this.id,
    this.lead = '',
    this.statements = const <String>[],
  });

  final String id;

  /// The bigger opening line rendered in the accent color.
  final String lead;
  final List<String> statements;

  factory StatementData.fromSiteContent(SiteContent content, bool isArabic) {
    return StatementData(
      id: 'about',
      lead: pickText(isArabic, content.aboutLeadEn, content.aboutLeadAr),
      statements: pickList(
        isArabic,
        content.aboutStatementsEn,
        content.aboutStatementsAr,
      ),
    );
  }

  factory StatementData.fromCustomItem(CustomSectionItem item, bool isArabic) {
    return StatementData(
      id: item.id,
      lead: pickText(isArabic, item.titleEn, item.titleAr),
      statements: <String>[
        if (pickText(
          isArabic,
          item.descriptionEn,
          item.descriptionAr,
        ).trim().isNotEmpty)
          pickText(isArabic, item.descriptionEn, item.descriptionAr),
        ...pickList(isArabic, item.bulletsEn, item.bulletsAr),
      ],
    );
  }
}
