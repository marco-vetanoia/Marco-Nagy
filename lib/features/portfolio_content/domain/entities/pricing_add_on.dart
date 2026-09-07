import 'package:freezed_annotation/freezed_annotation.dart';

part 'pricing_add_on.freezed.dart';
part 'pricing_add_on.g.dart';

/// An optional feature added on top of a base package. When [hasCounter] is
/// true the visitor picks a quantity (per language / per API / per screen) and
/// both price and days multiply by it.
@freezed
abstract class PricingAddOn with _$PricingAddOn {
  const factory PricingAddOn({
    required String id,
    required String name,
    @Default('') String nameAr,
    @Default(0) int unitPrice,
    @Default(0) int unitTimeDays,
    @Default(false) bool hasCounter,
    @Default('') String category,
    @Default('') String categoryAr,
    @Default(0) int order,
  }) = _PricingAddOn;

  factory PricingAddOn.fromJson(Map<String, dynamic> json) =>
      _$PricingAddOnFromJson(json);
}
