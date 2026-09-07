import 'package:flutter/foundation.dart' show immutable;

import '../../../portfolio_content/domain/entities/work_history_entry.dart';

@immutable
sealed class ExperienceState {
  const ExperienceState();
}

class ExperienceInitial extends ExperienceState {
  const ExperienceInitial();
}

class ExperienceLoading extends ExperienceState {
  const ExperienceLoading();
}

class ExperienceSuccess extends ExperienceState {
  const ExperienceSuccess(this.entries);
  final List<WorkHistoryEntry> entries;
}

class ExperienceError extends ExperienceState {
  const ExperienceError(this.message);
  final String message;
}
