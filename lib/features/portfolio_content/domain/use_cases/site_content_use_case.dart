import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/site_content.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class SiteContentUseCase {
  const SiteContentUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<SiteContent>> get() => _repo.getSiteContent();

  Future<DataResult<SiteContent>> save(SiteContent content) =>
      _repo.saveSiteContent(content);
}
