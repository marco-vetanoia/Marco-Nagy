import 'package:freezed_annotation/freezed_annotation.dart';

part 'certificate.freezed.dart';
part 'certificate.g.dart';

/// A certificate or education entry, rendered as an image card in the
/// two-column certificates grid.
@freezed
abstract class Certificate with _$Certificate {
  const factory Certificate({
    required String id,
    required String title,
    @Default('') String titleAr,
    @Default('') String provider,
    @Default('') String providerAr,
    @Default('') String year,
    @Default('') String location,
    @Default('') String locationAr,

    /// Path to a real certificate scan. Empty renders a generated card styled
    /// like a certificate instead.
    @Default('') String imageAsset,
    @Default(0) int order,
  }) = _Certificate;

  factory Certificate.fromJson(Map<String, dynamic> json) =>
      _$CertificateFromJson(json);
}
