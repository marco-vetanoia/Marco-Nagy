import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/widgets/admin/admin_item_actions.dart';
import '../../../portfolio_content/domain/entities/pricing_package.dart';

class PricingPackageCard extends StatelessWidget {
  const PricingPackageCard({
    required this.package,
    required this.isSelected,
    required this.onSelected,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final PricingPackage package;
  final bool isSelected;
  final VoidCallback onSelected;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: onSelected,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: EdgeInsets.all(24.r),
          decoration: BoxDecoration(
            gradient: context.gradients.surfacePanel,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(
              color: isSelected ? colors.accent : colors.divider,
              width: isSelected ? 1.8 : 1,
            ),
            boxShadow: isSelected
                ? <BoxShadow>[
                    BoxShadow(
                      color: colors.accent.withValues(alpha: 0.22),
                      blurRadius: 26,
                      offset: const Offset(0, 10),
                    ),
                  ]
                : null,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      context.localized(package.name, package.nameAr),
                      style: MyFonts.bold22.copyWith(color: colors.onNavy),
                    ),
                  ),
                  AdminItemActions(
                    onEdit: onEdit,
                    onDelete: onDelete,
                    compact: true,
                  ),
                ],
              ),
              SizedBox(height: 14.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '\$${package.basePrice}',
                    style: MyFonts.display36.copyWith(color: colors.accent),
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Text(
                context.localized(
                  package.timelineLabel,
                  package.timelineLabelAr,
                ),
                style: MyFonts.caps10.copyWith(color: colors.onNavyMuted),
              ),
              if (context
                  .localized(package.description, package.descriptionAr)
                  .trim()
                  .isNotEmpty) ...<Widget>[
                SizedBox(height: 16.h),
                Text(
                  context.localized(package.description, package.descriptionAr),
                  style: MyFonts.regular14.copyWith(color: colors.onNavyMuted),
                ),
              ],
              SizedBox(height: 20.h),
              Row(
                children: <Widget>[
                  Icon(
                    isSelected
                        ? Icons.check_circle_rounded
                        : Icons.circle_outlined,
                    size: 18.r,
                    color: isSelected ? colors.accent : colors.onNavyFaint,
                  ),
                  SizedBox(width: 8.w),
                  Text(
                    context.translate(
                      isSelected
                          ? LangKeys.pricingSelected
                          : LangKeys.pricingSelect,
                    ),
                    style: MyFonts.caps10.copyWith(
                      color: isSelected ? colors.accent : colors.onNavyFaint,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
