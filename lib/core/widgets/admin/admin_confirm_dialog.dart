import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/lang_keys.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';

/// Confirmation shown before any destructive admin action.
class AdminConfirmDialog extends StatelessWidget {
  const AdminConfirmDialog({
    required this.title,
    required this.body,
    required this.confirmLabel,
    super.key,
  });

  final String title;
  final String body;
  final String confirmLabel;

  /// Returns true only when the user explicitly confirms.
  static Future<bool> show(
    BuildContext context, {
    String? title,
    String? body,
    String? confirmLabel,
  }) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (dialogContext) => AdminConfirmDialog(
        title:
            title ?? dialogContext.translate(LangKeys.adminDeleteConfirmTitle),
        body: body ?? dialogContext.translate(LangKeys.adminDeleteConfirmBody),
        confirmLabel:
            confirmLabel ?? dialogContext.translate(LangKeys.adminDelete),
      ),
    );
    return result ?? false;
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return AlertDialog(
      backgroundColor: colors.surfaceHigh,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.r),
        side: BorderSide(color: colors.divider),
      ),
      title: Text(title, style: MyFonts.bold18.copyWith(color: colors.onNavy)),
      content: Text(
        body,
        style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: Text(
            context.translate(LangKeys.adminCancel),
            style: MyFonts.semi16.copyWith(color: colors.onNavyMuted),
          ),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(
            confirmLabel,
            style: MyFonts.semi16.copyWith(color: colors.danger),
          ),
        ),
      ],
    );
  }
}
