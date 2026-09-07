import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/localization/lang_keys.dart';
import '../../../../core/styles/fonts/my_fonts.dart';
import '../../../../core/utils/extension/context_extensions.dart';
import '../../../../core/widgets/admin/admin_item_actions.dart';
import '../../../portfolio_content/domain/entities/pricing_add_on.dart';

/// A checkbox add-on, or a quantity stepper when the add-on is priced per unit
/// (per language, per API, per screen).
class PricingAddOnTile extends StatelessWidget {
  const PricingAddOnTile({
    required this.addOn,
    required this.quantity,
    required this.onToggle,
    required this.onQuantityChanged,
    required this.onEdit,
    required this.onDelete,
    super.key,
  });

  final PricingAddOn addOn;
  final int quantity;
  final VoidCallback onToggle;
  final ValueChanged<int> onQuantityChanged;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  bool get _isSelected => quantity > 0;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final days = addOn.unitTimeDays;
    final dayLabel = context.translate(
      days == 1 ? LangKeys.pricingDay : LangKeys.pricingDays,
    );

    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      decoration: BoxDecoration(
        color: _isSelected
            ? colors.accent.withValues(alpha: 0.08)
            : colors.surface,
        borderRadius: BorderRadius.circular(14.r),
        border: Border.all(color: _isSelected ? colors.accent : colors.divider),
      ),
      child: Row(
        children: <Widget>[
          if (!addOn.hasCounter)
            Checkbox(
              value: _isSelected,
              onChanged: (_) => onToggle(),
              activeColor: colors.accent,
              checkColor: colors.pageTop,
              side: BorderSide(color: colors.onNavyFaint),
            ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  context.localized(addOn.name, addOn.nameAr),
                  style: MyFonts.semi16.copyWith(color: colors.onNavy),
                ),
                SizedBox(height: 4.h),
                Text(
                  '\$${addOn.unitPrice} · $days $dayLabel'
                  '${addOn.hasCounter ? ' · ${context.translate(LangKeys.pricingPerUnit)}' : ''}',
                  style: MyFonts.regular12.copyWith(color: colors.onNavyMuted),
                ),
              ],
            ),
          ),
          if (addOn.hasCounter)
            _QuantityStepper(quantity: quantity, onChanged: onQuantityChanged),
          AdminItemActions(onEdit: onEdit, onDelete: onDelete, compact: true),
        ],
      ),
    );
  }
}

class _QuantityStepper extends StatelessWidget {
  const _QuantityStepper({required this.quantity, required this.onChanged});

  final int quantity;
  final ValueChanged<int> onChanged;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        _StepperButton(
          icon: Icons.remove_rounded,
          // Disabled at zero rather than allowing negative quantities.
          onPressed: quantity <= 0 ? null : () => onChanged(quantity - 1),
        ),
        SizedBox(
          width: 34.w,
          child: Text(
            '$quantity',
            textAlign: TextAlign.center,
            style: MyFonts.semi16.copyWith(color: colors.onNavy),
          ),
        ),
        _StepperButton(
          icon: Icons.add_rounded,
          onPressed: () => onChanged(quantity + 1),
        ),
      ],
    );
  }
}

class _StepperButton extends StatelessWidget {
  const _StepperButton({required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final enabled = onPressed != null;

    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8.r),
      child: Container(
        // Keeps the touch target usable on mobile.
        constraints: BoxConstraints(minWidth: 34.w, minHeight: 34.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(color: enabled ? colors.accent : colors.divider),
        ),
        child: Icon(
          icon,
          size: 16.r,
          color: enabled ? colors.accent : colors.onNavyFaint,
        ),
      ),
    );
  }
}
