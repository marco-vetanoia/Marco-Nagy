import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/lang_keys.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';
import '../common/app_snack_bar.dart';
import '../common/pill_button.dart';

/// Shows the JSON produced by [PortfolioRepo.exportContent] so the author can
/// copy it into `assets/content/portfolio_content.json`.
///
/// A plain text dialog rather than a file download: the app has no backend
/// and no file-writing dependency, and this works identically on every
/// platform debug can run on (web, desktop, mobile) with nothing new to add.
class AdminExportDialog extends StatelessWidget {
  const AdminExportDialog({required this.json, super.key});

  final String json;

  static Future<void> show(BuildContext context, String json) {
    return showDialog<void>(
      context: context,
      builder: (_) => AdminExportDialog(json: json),
    );
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
      title: Text(
        context.translate(LangKeys.adminExportDialogTitle),
        style: MyFonts.bold18.copyWith(color: colors.onNavy),
      ),
      content: SizedBox(
        width: 640.w,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              context.translate(LangKeys.adminExportInstructions),
              style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
            ),
            SizedBox(height: 12.h),
            Container(
              constraints: BoxConstraints(maxHeight: 360.h),
              padding: EdgeInsets.all(12.r),
              decoration: BoxDecoration(
                color: colors.pageTop,
                borderRadius: BorderRadius.circular(10.r),
                border: Border.all(color: colors.divider),
              ),
              child: Scrollbar(
                child: SingleChildScrollView(
                  child: SelectableText(
                    json,
                    style: MyFonts.regular14.copyWith(
                      color: colors.onNavy,
                      fontFamily: 'monospace',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: Text(
            context.translate(LangKeys.commonClose),
            style: MyFonts.semi16.copyWith(color: colors.onNavyMuted),
          ),
        ),
        PillButton(
          label: context.translate(LangKeys.adminExportCopy),
          dense: true,
          showArrow: false,
          icon: Icons.copy_rounded,
          onPressed: () => _copy(context),
        ),
      ],
    );
  }

  Future<void> _copy(BuildContext context) async {
    await Clipboard.setData(ClipboardData(text: json));
    if (!context.mounted) return;
    AppSnackBar.show(
      context,
      context.translate(LangKeys.adminExportCopied),
      kind: SnackKind.success,
    );
  }
}
