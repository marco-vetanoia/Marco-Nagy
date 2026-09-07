import 'package:flutter/foundation.dart' show immutable;

import '../../../portfolio_content/domain/entities/pricing_add_on.dart';
import '../../../portfolio_content/domain/entities/pricing_package.dart';
import '../../../portfolio_content/domain/entities/quote_selection.dart';

@immutable
sealed class PricingState {
  const PricingState();
}

class PricingInitial extends PricingState {
  const PricingInitial();
}

class PricingLoading extends PricingState {
  const PricingLoading();
}

class PricingReady extends PricingState {
  const PricingReady({
    required this.packages,
    required this.addOns,
    required this.selection,
  });

  final List<PricingPackage> packages;
  final List<PricingAddOn> addOns;
  final QuoteSelection selection;

  int get total => selection.totalPrice(addOns);
  int get addOnDays => selection.totalAddOnDays(addOns);
}

class PricingError extends PricingState {
  const PricingError(this.message);
  final String message;
}
