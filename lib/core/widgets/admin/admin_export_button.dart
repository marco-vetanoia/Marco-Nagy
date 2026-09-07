import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../di/di.dart';
import '../../../features/portfolio_content/domain/repositories/portfolio_repo.dart';
import '../../common/data_result.dart';
import '../../localization/lang_keys.dart';
import '../../utils/extension/context_extensions.dart';
import '../common/app_snack_bar.dart';
import 'admin_export_dialog.dart';
import 'admin_gate.dart';

/// Serializes all local content and shows it for copying into
/// `assets/content/portfolio_content.json` — the step that turns a debug
/// editing session into what a release build ships. See
/// assets/content/README.md for the full publish flow.
class AdminExportButton extends StatelessWidget {
  const AdminExportButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AdminGate(
      child: Tooltip(
        message: context.translate(LangKeys.adminExportContent),
        child: IconButton(
          icon: Icon(
            Icons.ios_share_rounded,
            size: 22.r,
            color: context.colors.accent,
          ),
          onPressed: () => _export(context),
        ),
      ),
    );
  }

  Future<void> _export(BuildContext context) async {
    final result = await getIt<PortfolioRepo>().exportContent();
    if (!context.mounted) return;

    switch (result) {
      case Success<String>(:final data):
        await AdminExportDialog.show(context, data);
      case Fail<String>(:final message):
        AppSnackBar.show(context, message, kind: SnackKind.error);
    }
  }
}
