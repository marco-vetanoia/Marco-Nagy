import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/utils/extension/navigation_extensions.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/utils/responsive/app_breakpoints.dart';
import '../../../../core/widgets/chrome/portfolio_scaffold.dart';
import '../../../../core/widgets/common/content_container.dart';
import '../../../../core/widgets/common/pill_button.dart';
import '../../../../core/widgets/showcase/showcase_panel_view.dart';
import '../../../portfolio_content/domain/entities/section_definition.dart';
import '../../../portfolio_content/domain/entities/shot_background.dart';
import '../../../portfolio_content/domain/entities/showcase_panel.dart';
import '../../../portfolio_content/presentation/view_data/list_row_data.dart';

/// Internal detail view for one project — phone mockup plus swappable
/// screenshots. Marco's projects are real apps, so this stays in-app rather
/// than linking out.
class ProjectDetailView extends StatefulWidget {
  const ProjectDetailView({required this.data, super.key});

  final ListRowData data;

  @override
  State<ProjectDetailView> createState() => _ProjectDetailViewState();
}

class _ProjectDetailViewState extends State<ProjectDetailView> {
  int _selected = 0;

  @override
  Widget build(BuildContext context) {
    final data = widget.data;
    final accent = HexColor.parse(data.accentHex, context.colors.accent);

    return PortfolioScaffold(
      activeSectionId: BuiltInSectionIds.projects,
      children: <Widget>[
        SizedBox(height: 32.h),
        ContentContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              PillButton(
                label: context.translate(LangKeys.projectsBack),
                variant: PillButtonVariant.outlined,
                showArrow: false,
                dense: true,
                icon: Icons.arrow_back_rounded,
                onPressed: () => context.pop<void>(),
              ),
              SizedBox(height: 32.h),
              if (context.isWide)
                _WideDetail(
                  data: data,
                  accent: accent,
                  selected: _selected,
                  onSelected: (i) => setState(() => _selected = i),
                )
              else
                _NarrowDetail(
                  data: data,
                  accent: accent,
                  selected: _selected,
                  onSelected: (i) => setState(() => _selected = i),
                ),
              SizedBox(height: 64.h),
            ],
          ),
        ),
      ],
    );
  }
}

class _WideDetail extends StatelessWidget {
  const _WideDetail({
    required this.data,
    required this.accent,
    required this.selected,
    required this.onSelected,
  });

  final ListRowData data;
  final Color accent;
  final int selected;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: _DetailCopy(data: data, accent: accent),
        ),
        SizedBox(width: 48.w),
        Expanded(
          flex: 5,
          child: _DetailMockup(
            data: data,
            selected: selected,
            onSelected: onSelected,
            frameWidth: 260.w,
          ),
        ),
      ],
    );
  }
}

class _NarrowDetail extends StatelessWidget {
  const _NarrowDetail({
    required this.data,
    required this.accent,
    required this.selected,
    required this.onSelected,
  });

  final ListRowData data;
  final Color accent;
  final int selected;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _DetailCopy(data: data, accent: accent),
        SizedBox(height: 40.h),
        _DetailMockup(
          data: data,
          selected: selected,
          onSelected: onSelected,
          frameWidth: 220.w,
        ),
      ],
    );
  }
}

class _DetailCopy extends StatelessWidget {
  const _DetailCopy({required this.data, required this.accent});

  final ListRowData data;
  final Color accent;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        if (data.category.trim().isNotEmpty)
          Text(
            data.category.toUpperCase(),
            style: MyFonts.caps10.copyWith(color: accent),
          ),
        SizedBox(height: 10.h),
        Text(
          data.title,
          style: (context.isMobile ? MyFonts.display36 : MyFonts.display48)
              .copyWith(color: colors.onNavy),
        ),
        SizedBox(height: 24.h),
        Text(
          context.translate(LangKeys.projectsOverview).toUpperCase(),
          style: MyFonts.caps10.copyWith(color: colors.onNavyFaint),
        ),
        SizedBox(height: 10.h),
        Text(
          data.description,
          style: MyFonts.regular16.copyWith(color: colors.onNavyMuted),
        ),
        if (data.features.isNotEmpty) ...<Widget>[
          SizedBox(height: 32.h),
          Text(
            context.translate(LangKeys.projectsKeyFeatures).toUpperCase(),
            style: MyFonts.caps10.copyWith(color: colors.onNavyFaint),
          ),
          SizedBox(height: 14.h),
          for (final feature in data.features)
            Padding(
              padding: EdgeInsets.only(bottom: 10.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Transform.scale(
                      scaleX: context.isRtl ? -1 : 1,
                      child: Icon(
                        Icons.play_arrow_rounded,
                        size: 14.r,
                        color: accent,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),
                  Expanded(
                    child: Text(
                      feature,
                      style: MyFonts.regular16.copyWith(
                        color: colors.onNavyMuted,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ],
    );
  }
}

class _DetailMockup extends StatelessWidget {
  const _DetailMockup({
    required this.data,
    required this.selected,
    required this.onSelected,
    required this.frameWidth,
  });

  final ListRowData data;
  final int selected;
  final ValueChanged<int> onSelected;
  final double frameWidth;

  @override
  Widget build(BuildContext context) {
    if (data.panels.isEmpty) return const SizedBox.shrink();

    // Guard the index against a shrinking list after an admin delete.
    final safeIndex = selected.clamp(0, data.panels.length - 1);
    final panel = data.panels[safeIndex];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(20.r),
          child: ShowcasePanelView(
            panel: panel,
            background: panel.backgroundOverride ?? data.background,
            caption: context.localized(panel.captionEn, panel.captionAr),
            subtitle: context.localized(panel.subtitleEn, panel.subtitleAr),
            width: frameWidth,
          ),
        ),
        if (data.panels.length > 1) ...<Widget>[
          SizedBox(height: 24.h),
          Text(
            context.translate(LangKeys.projectsScreenshots).toUpperCase(),
            style: MyFonts.caps10.copyWith(color: context.colors.onNavyFaint),
          ),
          SizedBox(height: 14.h),
          _PanelThumbnails(
            panels: data.panels,
            background: data.background,
            selectedIndex: safeIndex,
            onSelected: onSelected,
          ),
        ],
      ],
    );
  }
}

/// Miniature renders of each panel, used to switch the large one.
class _PanelThumbnails extends StatelessWidget {
  const _PanelThumbnails({
    required this.panels,
    required this.background,
    required this.selectedIndex,
    required this.onSelected,
  });

  final List<ShowcasePanel> panels;
  final ShotBackground background;
  final int selectedIndex;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Wrap(
      spacing: 12.w,
      runSpacing: 12.h,
      children: <Widget>[
        for (var i = 0; i < panels.length; i++)
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => onSelected(i),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                padding: EdgeInsets.all(2.r),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  border: Border.all(
                    color: i == selectedIndex ? colors.accent : colors.divider,
                    width: i == selectedIndex ? 1.8 : 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: ShowcasePanelView(
                    panel: panels[i],
                    background: panels[i].backgroundOverride ?? background,
                    caption: '',
                    subtitle: '',
                    width: 56.w,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
