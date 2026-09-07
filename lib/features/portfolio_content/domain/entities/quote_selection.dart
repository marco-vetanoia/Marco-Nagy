import 'pricing_add_on.dart';
import 'pricing_package.dart';

/// The live quote the pricing screen computes from the visitor's choices.
/// Plain value type — it's derived state, never persisted.
class QuoteSelection {
  const QuoteSelection({this.package, this.quantities = const <String, int>{}});

  final PricingPackage? package;

  /// Add-on id -> quantity. A non-counter add-on is either absent or 1.
  final Map<String, int> quantities;

  QuoteSelection copyWith({
    PricingPackage? package,
    Map<String, int>? quantities,
    bool clearPackage = false,
  }) {
    return QuoteSelection(
      package: clearPackage ? null : (package ?? this.package),
      quantities: quantities ?? this.quantities,
    );
  }

  int quantityOf(String addOnId) => quantities[addOnId] ?? 0;

  bool isSelected(String addOnId) => quantityOf(addOnId) > 0;

  int totalPrice(List<PricingAddOn> addOns) {
    var total = package?.basePrice ?? 0;
    for (final addOn in addOns) {
      total += addOn.unitPrice * quantityOf(addOn.id);
    }
    return total;
  }

  int totalAddOnDays(List<PricingAddOn> addOns) {
    var days = 0;
    for (final addOn in addOns) {
      days += addOn.unitTimeDays * quantityOf(addOn.id);
    }
    return days;
  }
}
