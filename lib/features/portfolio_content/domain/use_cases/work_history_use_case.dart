import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/work_history_entry.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class WorkHistoryUseCase {
  const WorkHistoryUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<WorkHistoryEntry>>> getAll() => _repo.getWorkHistory();

  Future<DataResult<List<WorkHistoryEntry>>> upsert(WorkHistoryEntry entry) =>
      _repo.upsertWorkHistory(entry);

  Future<DataResult<List<WorkHistoryEntry>>> delete(String id) =>
      _repo.deleteWorkHistory(id);
}
