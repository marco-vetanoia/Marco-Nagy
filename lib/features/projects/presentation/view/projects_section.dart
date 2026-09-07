import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/extension/navigation_extensions.dart';
import '../../../../core/widgets/common/content_container.dart';
import '../../../../core/widgets/motion/motion_durations.dart';
import '../../../../core/widgets/motion/reveal_on_scroll.dart';
import '../../../../core/widgets/section/section_divider_header.dart';
import '../../../../di/di.dart';
import '../../../portfolio_content/domain/entities/personal_project.dart';
import '../../../portfolio_content/presentation/view_data/list_row_data.dart';
import '../view_model/projects_actions.dart';
import '../view_model/projects_states.dart';
import '../view_model/projects_view_model.dart';
import '../widgets/project_list_row.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProjectsViewModelCubit>(
      create: (_) => getIt<ProjectsViewModelCubit>()..doAction(LoadProjects()),
      child: const _ProjectsBody(),
    );
  }
}

class _ProjectsBody extends StatelessWidget {
  const _ProjectsBody();

  @override
  Widget build(BuildContext context) {
    final title = context.translate(LangKeys.projectsTitle);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        SectionDividerHeader(title: title),
        ContentContainer(
          child: BlocBuilder<ProjectsViewModelCubit, ProjectsState>(
            builder: (context, state) => switch (state) {
              ProjectsInitial() ||
              ProjectsLoading() => const _ProjectsLoading(),
              ProjectsError() => _ProjectsMessage(text: state.message),
              ProjectsSuccess() => _ProjectsList(projects: state.projects),
            },
          ),
        ),
        SizedBox(height: 96.h),
      ],
    );
  }
}

class _ProjectsList extends StatelessWidget {
  const _ProjectsList({required this.projects});

  final List<PersonalProject> projects;

  @override
  Widget build(BuildContext context) {
    if (projects.isEmpty) {
      return _ProjectsMessage(text: context.translate(LangKeys.projectsEmpty));
    }

    final cubit = context.read<ProjectsViewModelCubit>();

    return Column(
      children: <Widget>[
        for (var i = 0; i < projects.length; i++)
          Builder(
            builder: (context) {
              // Resolved once here so the row and the detail route share
              // exactly the same language-resolved data.
              final data = ListRowData.fromProject(
                projects[i],
                i,
                context.isArabic,
              );
              return RevealOnScroll(
                delay: Motion.stagger * (i % 4),
                child: ProjectListRow(
                  key: ValueKey<String>(projects[i].id),
                  data: data,
                  onOpen: () => context.pushNamed<void>(
                    RouteNames.projectDetail,
                    arguments: data,
                  ),
                  onEdit: () {},
                  onDelete: () => cubit.doAction(DeleteProject(projects[i].id)),
                ),
              );
            },
          ),
      ],
    );
  }
}

class _ProjectsLoading extends StatelessWidget {
  const _ProjectsLoading();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 64.h),
      child: Center(
        child: CircularProgressIndicator(color: context.colors.accent),
      ),
    );
  }
}

class _ProjectsMessage extends StatelessWidget {
  const _ProjectsMessage({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 64.h),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: MyFonts.regular16.copyWith(color: context.colors.onNavyMuted),
        ),
      ),
    );
  }
}
