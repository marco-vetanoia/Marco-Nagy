import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/pricing_add_on.dart';
import '../entities/pricing_package.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class PricingUseCase {
  const PricingUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<PricingPackage>>> getPackages() =>
      _repo.getPricingPackages();

  Future<DataResult<List<PricingPackage>>> upsertPackage(
    PricingPackage package,
  ) => _repo.upsertPricingPackage(package);

  Future<DataResult<List<PricingPackage>>> deletePackage(String id) =>
      _repo.deletePricingPackage(id);

  Future<DataResult<List<PricingAddOn>>> getAddOns() =>
      _repo.getPricingAddOns();

  Future<DataResult<List<PricingAddOn>>> upsertAddOn(PricingAddOn addOn) =>
      _repo.upsertPricingAddOn(addOn);

  Future<DataResult<List<PricingAddOn>>> deleteAddOn(String id) =>
      _repo.deletePricingAddOn(id);
}
