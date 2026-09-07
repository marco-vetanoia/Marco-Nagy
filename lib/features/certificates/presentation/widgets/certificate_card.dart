import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/widgets/admin/admin_item_actions.dart';
import '../../../../core/widgets/common/app_image.dart';
import '../../../portfolio_content/presentation/view_data/grid_card_data.dart';

/// One cell of the certificates grid.
///
/// A real scan renders as the image; without one the card draws itself in a
/// certificate-like style — ruled border, centred title, issuer and year —
/// rather than showing an empty box.
class CertificateCard extends StatelessWidget {
  const CertificateCard({
    required this.data,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final GridCardData data;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Container(
      decoration: BoxDecoration(
        gradient: context.gradients.surfacePanel,
        borderRadius: BorderRadius.circular(16.r),
        border: Border.all(color: colors.divider),
      ),
      clipBehavior: Clip.antiAlias,
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: data.hasImage
                ? AppImage(
                    image: data.image,
                    fallback: _GeneratedCard(data: data),
                  )
                : _GeneratedCard(data: data),
          ),
          PositionedDirectional(
            top: 4.h,
            end: 4.w,
            child: AdminItemActions(
              onEdit: onEdit,
              onDelete: onDelete,
              compact: true,
            ),
          ),
        ],
      ),
    );
  }
}

/// The fallback rendering: a card styled to read like a certificate.
class _GeneratedCard extends StatelessWidget {
  const _GeneratedCard({required this.data});

  final GridCardData data;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Padding(
      padding: EdgeInsets.all(14.r),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          border: Border.all(color: colors.accent.withValues(alpha: 0.45)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Icon(
              Icons.workspace_premium_outlined,
              size: 30.r,
              color: colors.accent,
            ),
            SizedBox(height: 14.h),
            Text(
              data.title,
              textAlign: TextAlign.center,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: MyFonts.bold18.copyWith(color: colors.onNavy),
            ),
            if (data.provider.trim().isNotEmpty) ...<Widget>[
              SizedBox(height: 10.h),
              Text(
                '${context.translate(LangKeys.certificatesIssuedBy)} '
                '${data.provider}',
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
              ),
            ],
            if (data.year.trim().isNotEmpty ||
                data.location.trim().isNotEmpty) ...<Widget>[
              SizedBox(height: 14.h),
              Text(
                <String>[
                  if (data.year.trim().isNotEmpty) data.year,
                  if (data.location.trim().isNotEmpty) data.location,
                ].join(' · '),
                textAlign: TextAlign.center,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: MyFonts.caps10.copyWith(color: colors.accent),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
