import '../../../portfolio_content/domain/entities/pricing_add_on.dart';
import '../../../portfolio_content/domain/entities/pricing_package.dart';

sealed class PricingActions {}

class LoadPricing extends PricingActions {}

class SelectPackage extends PricingActions {
  SelectPackage(this.package);
  final PricingPackage package;
}

/// Turns a non-counter add-on on or off.
class ToggleAddOn extends PricingActions {
  ToggleAddOn(this.addOnId);
  final String addOnId;
}

/// Changes quantity for a counter add-on (per language / API / screen).
class ChangeAddOnQuantity extends PricingActions {
  ChangeAddOnQuantity(this.addOnId, this.quantity);
  final String addOnId;
  final int quantity;
}

class ResetQuote extends PricingActions {}

/// Debug-only mutations.
class SavePackage extends PricingActions {
  SavePackage(this.package);
  final PricingPackage package;
}

class DeletePackage extends PricingActions {
  DeletePackage(this.id);
  final String id;
}

class SaveAddOn extends PricingActions {
  SaveAddOn(this.addOn);
  final PricingAddOn addOn;
}

class DeleteAddOn extends PricingActions {
  DeleteAddOn(this.id);
  final String id;
}
