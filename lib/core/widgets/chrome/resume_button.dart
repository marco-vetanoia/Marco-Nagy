import 'package:flutter/material.dart';

import '../../localization/lang_keys.dart';
import '../../utils/extension/context_extensions.dart';
import '../../utils/url_opener.dart';
import '../common/app_snack_bar.dart';
import '../common/pill_button.dart';

/// Opens the CV PDF in a new tab. It is a static asset link, not an in-app
/// viewer — matching the reference site's behaviour.
class ResumeButton extends StatelessWidget {
  const ResumeButton({this.dense = false, super.key});

  final bool dense;

  @override
  Widget build(BuildContext context) {
    return PillButton(
      label: context.translate(LangKeys.navResume),
      variant: PillButtonVariant.outlined,
      showArrow: false,
      icon: Icons.description_outlined,
      dense: dense,
      onPressed: () async {
        final messengerContext = context;
        final opened = await UrlOpener.openResume();
        if (!opened && messengerContext.mounted) {
          AppSnackBar.show(
            messengerContext,
            messengerContext.translate(LangKeys.commonError),
            kind: SnackKind.error,
          );
        }
      },
    );
  }
}
