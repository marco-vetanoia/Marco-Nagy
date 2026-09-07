import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_links.dart';
import '../constants/profile_info.dart';

/// All outward links. Social profiles and the CV open in a new tab; in-app nav
/// never goes through here.
class UrlOpener {
  const UrlOpener._();

  static Future<bool> open(String url) async {
    final uri = Uri.tryParse(url);
    if (uri == null) return false;
    try {
      return await launchUrl(
        uri,
        mode: kIsWeb
            ? LaunchMode.platformDefault
            : LaunchMode.externalApplication,
        webOnlyWindowName: '_blank',
      );
    } on Exception {
      return false;
    }
  }

  static Future<bool> openGitHub() => open(ProfileInfo.gitHubUrl);

  static Future<bool> openLinkedIn() => open(ProfileInfo.linkedInUrl);

  /// Returns false when there's nothing openable — a bundled asset has no URL
  /// on mobile, so [AppLinks.hostedCvUrl] must be set for the button to work there.
  static Future<bool> openResume() {
    if (AppLinks.hostedCvUrl.isNotEmpty) return open(AppLinks.hostedCvUrl);
    if (kIsWeb) return open(AppLinks.bundledCvWebPath);
    return Future<bool>.value(false);
  }

  static Future<bool> openMailTo({String? subject, String? body}) {
    final uri = Uri(
      scheme: 'mailto',
      path: ProfileInfo.email,
      query:
          <String, String>{
                if (subject != null && subject.isNotEmpty) 'subject': subject,
                if (body != null && body.isNotEmpty) 'body': body,
              }.entries
              .map(
                (e) =>
                    '${Uri.encodeQueryComponent(e.key)}=${Uri.encodeQueryComponent(e.value)}',
              )
              .join('&'),
    );
    return open(uri.toString());
  }

  static Future<bool> openPhone() =>
      open('tel:${ProfileInfo.phone.replaceAll(RegExp(r'\s'), '')}');
}
