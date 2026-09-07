import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../localization/lang_keys.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';
import 'admin_gate.dart';

/// Per-item edit/delete icons shown beside content in debug builds only.
class AdminItemActions extends StatelessWidget {
  const AdminItemActions({
    required this.onEdit,
    required this.onDelete,
    this.compact = false,
    super.key,
  });

  final VoidCallback onEdit;
  final VoidCallback onDelete;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final size = compact ? 16.r : 18.r;

    return AdminGate(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _ActionIcon(
            icon: Icons.edit_outlined,
            tooltip: context.translate(LangKeys.adminEdit),
            color: colors.accent,
            size: size,
            onPressed: onEdit,
          ),
          SizedBox(width: 4.w),
          _ActionIcon(
            icon: Icons.delete_outline_rounded,
            tooltip: context.translate(LangKeys.adminDelete),
            color: colors.danger,
            size: size,
            onPressed: onDelete,
          ),
        ],
      ),
    );
  }
}

class _ActionIcon extends StatelessWidget {
  const _ActionIcon({
    required this.icon,
    required this.tooltip,
    required this.color,
    required this.size,
    required this.onPressed,
  });

  final IconData icon;
  final String tooltip;
  final Color color;
  final double size;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: tooltip,
      child: IconButton(
        onPressed: onPressed,
        visualDensity: VisualDensity.compact,
        constraints: BoxConstraints(minWidth: 34.w, minHeight: 34.h),
        padding: EdgeInsets.zero,
        icon: Icon(icon, size: size, color: color),
      ),
    );
  }
}

/// Small "DEBUG MODE" chip so it's obvious why admin controls are visible.
class AdminBadge extends StatelessWidget {
  const AdminBadge({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return AdminGate(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
        decoration: BoxDecoration(
          color: colors.accent.withValues(alpha: 0.14),
          borderRadius: BorderRadius.circular(100.r),
          border: Border.all(color: colors.accent.withValues(alpha: 0.5)),
        ),
        child: Text(
          context.translate(LangKeys.adminBadge),
          style: MyFonts.caps10.copyWith(color: colors.accent),
        ),
      ),
    );
  }
}
