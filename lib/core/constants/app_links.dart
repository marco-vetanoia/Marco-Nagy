import '../styles/app_images.dart';

class AppLinks {
  const AppLinks._();

  /// Optional hosted copy of the CV. When set, the RESUME button opens this on
  /// every platform. Leave empty to fall back to the bundled asset (web only —
  /// a bundled asset has no openable URL on mobile).
  static const String hostedCvUrl = '';

  /// Flutter web serves bundled assets under an extra `assets/` prefix.
  static const String bundledCvWebPath = 'assets/${AppImages.cvPdf}';
}
