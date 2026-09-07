import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/custom_section_item.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class CustomSectionUseCase {
  const CustomSectionUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<CustomSectionItem>>> getItems(String sectionId) =>
      _repo.getCustomItems(sectionId);

  Future<DataResult<List<CustomSectionItem>>> upsert(CustomSectionItem item) =>
      _repo.upsertCustomItem(item);

  Future<DataResult<List<CustomSectionItem>>> delete(
    String sectionId,
    String itemId,
  ) => _repo.deleteCustomItem(sectionId, itemId);
}
