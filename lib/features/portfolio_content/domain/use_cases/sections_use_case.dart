import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/section_definition.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class SectionsUseCase {
  const SectionsUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<SectionDefinition>>> getAll() => _repo.getSections();

  /// Persists a whole reordered list in one write.
  Future<DataResult<List<SectionDefinition>>> saveAll(
    List<SectionDefinition> sections,
  ) => _repo.saveSections(sections);

  Future<DataResult<List<SectionDefinition>>> upsert(
    SectionDefinition section,
  ) => _repo.upsertSection(section);

  /// Only custom sections can be removed; built-ins are hidden instead.
  Future<DataResult<List<SectionDefinition>>> deleteCustom(String id) =>
      _repo.deleteCustomSection(id);
}
