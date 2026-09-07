import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_package.freezed.dart';
part 'pricing_package.g.dart';

/// One of the base packages a client starts from (MVP / Medium / Advanced).
@freezed
abstract class PricingPackage with _$PricingPackage {
  const factory PricingPackage({
    required String id,
    required String name,
    @Default('') String nameAr,
    @Default(0) int basePrice,
    @Default('') String timelineLabel,
    @Default('') String timelineLabelAr,
    @Default('') String description,
    @Default('') String descriptionAr,
    @Default(0) int order,
  }) = _PricingPackage;

  factory PricingPackage.fromJson(Map<String, dynamic> json) =>
      _$PricingPackageFromJson(json);
}
