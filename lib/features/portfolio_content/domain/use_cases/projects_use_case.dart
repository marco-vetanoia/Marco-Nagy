import 'package:injectable/injectable.dart';

import '../../../../core/common/data_result.dart';
import '../entities/personal_project.dart';
import '../repositories/portfolio_repo.dart';

@injectable
class ProjectsUseCase {
  const ProjectsUseCase(this._repo);

  final PortfolioRepo _repo;

  Future<DataResult<List<PersonalProject>>> getAll() => _repo.getProjects();

  Future<DataResult<List<PersonalProject>>> upsert(PersonalProject project) =>
      _repo.upsertProject(project);

  Future<DataResult<List<PersonalProject>>> delete(String id) =>
      _repo.deleteProject(id);
}
