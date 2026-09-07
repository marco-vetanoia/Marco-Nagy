import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app_cubit/app_actions.dart';
import '../../app_cubit/app_cubit.dart';
import '../../app_cubit/app_state.dart';
import '../../localization/lang_keys.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';
import '../motion/motion_durations.dart';

/// EN / AR switch in the nav. The choice is persisted by [AppCubit], the same
/// way theme mode is persisted elsewhere.
class LanguageToggle extends StatelessWidget {
  const LanguageToggle({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        final cubit = context.read<AppCubit>();
        return Tooltip(
          message: context.translate(LangKeys.langSwitchTooltip),
          child: MouseRegion(
            cursor: SystemMouseCursors.click,
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () => cubit.doAction(ToggleLanguage()),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.r),
                  border: Border.all(color: context.colors.divider),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    _LanguageChip(
                      label: context.translate(LangKeys.langEnglish),
                      isActive: !cubit.isArabic,
                    ),
                    _LanguageChip(
                      label: context.translate(LangKeys.langArabic),
                      isActive: cubit.isArabic,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _LanguageChip extends StatelessWidget {
  const _LanguageChip({required this.label, required this.isActive});

  final String label;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Motion.quick,
      curve: Curves.easeOut,
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      decoration: BoxDecoration(
        color: isActive ? context.colors.accent : context.colors.transparent,
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: Text(
        label,
        style: MyFonts.caps10.copyWith(
          color: isActive ? context.colors.pageTop : context.colors.onNavyMuted,
        ),
      ),
    );
  }
}
