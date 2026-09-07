import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';

enum SnackKind { info, success, error }

class AppSnackBar {
  const AppSnackBar._();

  static void show(
    BuildContext context,
    String message, {
    SnackKind kind = SnackKind.info,
  }) {
    final colors = context.colors;
    final accent = switch (kind) {
      SnackKind.info => colors.accent,
      SnackKind.success => colors.success,
      SnackKind.error => colors.danger,
    };

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          backgroundColor: colors.surfaceHigh,
          elevation: 8,
          duration: const Duration(seconds: 4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
            side: BorderSide(color: accent.withValues(alpha: 0.6)),
          ),
          content: Text(
            message,
            style: MyFonts.regular14.copyWith(color: colors.onNavy),
          ),
        ),
      );
  }
}
