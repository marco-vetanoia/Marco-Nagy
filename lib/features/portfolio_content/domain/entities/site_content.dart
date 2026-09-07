import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_ref.dart';

part 'site_content.freezed.dart';
part 'site_content.g.dart';

/// Every singleton piece of copy on the site — identity, hero, about, footer
/// and contact details.
///
/// This replaces the compile-time `ProfileInfo` constants so debug builds can
/// edit it. The old constants survive only as the seed defaults.
@freezed
abstract class SiteContent with _$SiteContent {
  const factory SiteContent({
    // Identity.
    @Default('') String fullNameEn,
    @Default('') String fullNameAr,
    @Default('') String roleEn,
    @Default('') String roleAr,
    @Default('MN') String monogram,
    @Default('') String locationEn,
    @Default('') String locationAr,
    @Default(ImageRef()) ImageRef profileImage,

    // Contact + outward links.
    @Default('') String email,
    @Default('') String phone,
    @Default('') String gitHubUrl,
    @Default('') String linkedInUrl,

    /// Optional hosted CV. Empty falls back to the bundled asset (web only).
    @Default('') String hostedCvUrl,

    // Hero.
    @Default('') String heroGreetingEn,
    @Default('') String heroGreetingAr,
    @Default('') String heroNameEn,
    @Default('') String heroNameAr,
    @Default('') String heroRoleEn,
    @Default('') String heroRoleAr,
    @Default(<String>[]) List<String> roleTagsEn,
    @Default(<String>[]) List<String> roleTagsAr,

    // About.
    @Default('') String summaryEn,
    @Default('') String summaryAr,
    @Default('') String aboutLeadEn,
    @Default('') String aboutLeadAr,
    @Default(<String>[]) List<String> aboutStatementsEn,
    @Default(<String>[]) List<String> aboutStatementsAr,

    // Footer.
    @Default('') String footerHeadlineEn,
    @Default('') String footerHeadlineAr,
    @Default('') String footerAvailabilityEn,
    @Default('') String footerAvailabilityAr,

    // Contact page copy.
    @Default('') String contactTitleEn,
    @Default('') String contactTitleAr,
    @Default('') String contactSubtitleEn,
    @Default('') String contactSubtitleAr,
  }) = _SiteContent;

  factory SiteContent.fromJson(Map<String, dynamic> json) =>
      _$SiteContentFromJson(json);
}
