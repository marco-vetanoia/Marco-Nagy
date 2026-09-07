import 'package:flutter/foundation.dart' show immutable;

import '../../../portfolio_content/domain/entities/personal_project.dart';

@immutable
sealed class ProjectsState {
  const ProjectsState();
}

class ProjectsInitial extends ProjectsState {
  const ProjectsInitial();
}

class ProjectsLoading extends ProjectsState {
  const ProjectsLoading();
}

class ProjectsSuccess extends ProjectsState {
  const ProjectsSuccess(this.projects);
  final List<PersonalProject> projects;
}

class ProjectsError extends ProjectsState {
  const ProjectsError(this.message);
  final String message;
}
