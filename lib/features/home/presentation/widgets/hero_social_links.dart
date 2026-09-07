import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/widgets/chrome/footer_social_icons.dart';

/// GitHub / LinkedIn on the hero's bottom-leading corner, with a rule running
/// out from them the way the reference site anchors its social row.
class HeroSocialLinks extends StatelessWidget {
  const HeroSocialLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const FooterSocialIcons(),
        SizedBox(width: 16.w),
        Container(width: 72.w, height: 1, color: context.colors.divider),
      ],
    );
  }
}
