import 'dart:math' as math;

import 'package:flutter/material.dart';

import '../../../features/portfolio_content/domain/entities/media_shot.dart';
import '../../../features/portfolio_content/domain/entities/shot_background.dart';
import '../../../features/portfolio_content/domain/entities/showcase_panel.dart';
import '../../styles/fonts/my_fonts.dart';
import '../../utils/extension/context_extensions.dart';
import '../../utils/hex_color.dart';
import 'device_frame.dart';
import 'shot_background_view.dart';

/// Renders one composed showcase panel: background, framed screenshots, caption.
///
/// Wrapped in a [RepaintBoundary] from the start. That costs nothing today and
/// makes "export this panel as a PNG" a small addition later instead of a
/// rewrite.
class ShowcasePanelView extends StatelessWidget {
  const ShowcasePanelView({
    required this.panel,
    required this.background,
    required this.caption,
    required this.subtitle,
    this.width,
    super.key,
  });

  final ShowcasePanel panel;

  /// Already resolved: the panel's own override, else the project default.
  final ShotBackground background;

  /// Already resolved into the active language.
  final String caption;
  final String subtitle;

  final double? width;

  /// How wide a device sits relative to the panel, per format. A portrait
  /// screenshot is dominated by one phone; a feature graphic holds smaller ones.
  static double _deviceWidthFactor(ShowcaseFormat format) => switch (format) {
    ShowcaseFormat.screenshot => 0.74,
    ShowcaseFormat.featureGraphic => 0.24,
    ShowcaseFormat.free => 0.6,
  };

  @override
  Widget build(BuildContext context) {
    final aspectRatio = panel.format.aspectRatio;

    Widget content = LayoutBuilder(
      builder: (context, constraints) {
        final panelWidth = constraints.maxWidth;
        final panelHeight = constraints.hasBoundedHeight
            ? constraints.maxHeight
            : panelWidth / (aspectRatio ?? 1);

        return Stack(
          // Devices deliberately overflow the panel edge, as in the reference
          // graphics where the phone is cropped by the bottom border.
          clipBehavior: Clip.hardEdge,
          fit: StackFit.expand,
          children: <Widget>[
            ShotBackgroundView(background: background),
            for (final shot in panel.shots)
              _PositionedShot(
                shot: shot,
                panelWidth: panelWidth,
                panelHeight: panelHeight,
                deviceWidth: panelWidth * _deviceWidthFactor(panel.format),
                label: caption,
              ),
            if (panel.captionPlacement != CaptionPlacement.none &&
                (caption.trim().isNotEmpty || subtitle.trim().isNotEmpty))
              _PanelCaption(
                caption: caption,
                subtitle: subtitle,
                placement: panel.captionPlacement,
                color: HexColor.parse(
                  panel.captionColorHex,
                  context.colors.onNavy,
                ),
                panelWidth: panelWidth,
              ),
          ],
        );
      },
    );

    if (aspectRatio != null) {
      content = AspectRatio(aspectRatio: aspectRatio, child: content);
    }

    return RepaintBoundary(
      child: SizedBox(width: width, child: content),
    );
  }
}

class _PositionedShot extends StatelessWidget {
  const _PositionedShot({
    required this.shot,
    required this.panelWidth,
    required this.panelHeight,
    required this.deviceWidth,
    required this.label,
  });

  final MediaShot shot;
  final double panelWidth;
  final double panelHeight;
  final double deviceWidth;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform.translate(
        offset: Offset(shot.offsetX * panelWidth, shot.offsetY * panelHeight),
        child: Transform.rotate(
          angle: shot.rotationDegrees * math.pi / 180,
          child: DeviceFrame(
            image: shot.image,
            frame: shot.frame,
            width: deviceWidth * shot.scale,
            label: label,
          ),
        ),
      ),
    );
  }
}

class _PanelCaption extends StatelessWidget {
  const _PanelCaption({
    required this.caption,
    required this.subtitle,
    required this.placement,
    required this.color,
    required this.panelWidth,
  });

  final String caption;
  final String subtitle;
  final CaptionPlacement placement;
  final Color color;
  final double panelWidth;

  AlignmentDirectional get _alignment => switch (placement) {
    CaptionPlacement.top => AlignmentDirectional.topCenter,
    CaptionPlacement.bottom => AlignmentDirectional.bottomCenter,
    CaptionPlacement.start => AlignmentDirectional.centerStart,
    CaptionPlacement.end => AlignmentDirectional.centerEnd,
    CaptionPlacement.none => AlignmentDirectional.topCenter,
  };

  @override
  Widget build(BuildContext context) {
    // Type scales with the panel, not the screen: a panel must look the same
    // whether it renders at 300px in a gallery or full-bleed.
    final titleSize = panelWidth * 0.075;

    return Align(
      alignment: _alignment,
      child: Padding(
        padding: EdgeInsets.all(panelWidth * 0.07),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            if (caption.trim().isNotEmpty)
              Text(
                caption,
                style: MyFonts.display36.copyWith(
                  fontSize: titleSize,
                  color: color,
                  height: 1.12,
                ),
              ),
            if (subtitle.trim().isNotEmpty) ...<Widget>[
              SizedBox(height: panelWidth * 0.02),
              Text(
                subtitle,
                style: MyFonts.regular16.copyWith(
                  fontSize: titleSize * 0.42,
                  color: color.withValues(alpha: 0.9),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
