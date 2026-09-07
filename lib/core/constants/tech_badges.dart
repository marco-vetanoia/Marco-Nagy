import 'package:flutter/material.dart';

/// A tech badge orbiting the hero photo.
///
/// [assetPath] points at the brand's own logo. When that file is absent the
/// badge falls back to a moulded chip in the brand's colours, so the hero is
/// never broken by a missing asset — drop the logo in and it takes over.
class TechBadge {
  const TechBadge({
    required this.label,
    required this.assetPath,
    required this.brandStart,
    required this.brandEnd,
    required this.fallbackIcon,
  });

  final String label;

  /// Case-sensitive: the web build serves assets over HTTP, where `gitHub.svg`
  /// and `github.svg` are different files.
  final String assetPath;

  /// Two stops of the brand's colour, lit from the top-left to give the chip
  /// its raised, three-dimensional read.
  final Color brandStart;
  final Color brandEnd;

  /// Drawn inside the chip until the logo asset exists.
  final IconData fallbackIcon;

  static const String _dir = 'assets/tech';

  static const List<TechBadge> heroOrbit = <TechBadge>[
    TechBadge(
      label: 'Flutter',
      assetPath: '$_dir/flutter.svg',
      brandStart: Color(0xFF54C5F8),
      brandEnd: Color(0xFF01579B),
      fallbackIcon: Icons.flutter_dash,
    ),
    TechBadge(
      label: 'Dart',
      assetPath: '$_dir/dart.svg',
      brandStart: Color(0xFF41C4FF),
      brandEnd: Color(0xFF0175C2),
      fallbackIcon: Icons.code_rounded,
    ),
    TechBadge(
      label: 'Firebase',
      assetPath: '$_dir/firebase.svg',
      brandStart: Color(0xFFFFCA28),
      brandEnd: Color(0xFFF57C00),
      fallbackIcon: Icons.local_fire_department_rounded,
    ),
    TechBadge(
      label: 'Android',
      assetPath: '$_dir/android.svg',
      brandStart: Color(0xFF6FE39F),
      brandEnd: Color(0xFF1B8A4B),
      fallbackIcon: Icons.android_rounded,
    ),
    TechBadge(
      label: 'GitHub',
      assetPath: '$_dir/gitHub.svg',
      // A light chip on purpose: the GitHub mark is dark and would disappear
      // against a dark one on this navy ground.
      brandStart: Color(0xFFF0F6FC),
      brandEnd: Color(0xFF8B949E),
      fallbackIcon: Icons.merge_type_rounded,
    ),
    TechBadge(
      label: '.NET',
      assetPath: '$_dir/dotnet.svg',
      brandStart: Color(0xFF9B7BFF),
      brandEnd: Color(0xFF512BD4),
      fallbackIcon: Icons.hexagon_rounded,
    ),
    TechBadge(
      label: 'C#',
      assetPath: '$_dir/csharp.svg',
      brandStart: Color(0xFFB980C8),
      brandEnd: Color(0xFF68217A),
      fallbackIcon: Icons.tag_rounded,
    ),
    TechBadge(
      label: 'GraphQL',
      assetPath: '$_dir/graphQL.svg',
      brandStart: Color(0xFFF06FC4),
      brandEnd: Color(0xFFA6127A),
      fallbackIcon: Icons.hub_rounded,
    ),
    TechBadge(
      label: 'MySQL',
      assetPath: '$_dir/mysql.svg',
      brandStart: Color(0xFF4FA8C4),
      brandEnd: Color(0xFF00618A),
      fallbackIcon: Icons.storage_rounded,
    ),
    TechBadge(
      label: 'SQL',
      assetPath: '$_dir/sql.svg',
      brandStart: Color(0xFF7FB3D5),
      brandEnd: Color(0xFF1F4E79),
      fallbackIcon: Icons.table_chart_rounded,
    ),
    TechBadge(
      label: 'Figma',
      assetPath: '$_dir/figma.svg',
      brandStart: Color(0xFFFF7262),
      brandEnd: Color(0xFFA259FF),
      fallbackIcon: Icons.brush_rounded,
    ),
  ];
}
