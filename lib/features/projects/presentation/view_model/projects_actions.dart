import '../../../portfolio_content/domain/entities/personal_project.dart';

sealed class ProjectsActions {}

class LoadProjects extends ProjectsActions {}

/// Debug-only: create or update a project.
class SaveProject extends ProjectsActions {
  SaveProject(this.project);
  final PersonalProject project;
}

/// Debug-only: remove a project.
class DeleteProject extends ProjectsActions {
  DeleteProject(this.id);
  final String id;
}
