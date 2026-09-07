import 'package:freezed_annotation/freezed_annotation.dart';

import 'media_shot.dart';
import 'shot_background.dart';

part 'showcase_panel.freezed.dart';
part 'showcase_panel.g.dart';

/// Panel proportions, matching the store assets these are modelled on.
enum ShowcaseFormat {
  /// 9:16 portrait phone screenshot.
  screenshot,

  /// 1024x500 Play Store feature graphic.
  featureGraphic,

  /// Grows with its content.
  free;

  double? get aspectRatio => switch (this) {
    ShowcaseFormat.screenshot => 9 / 16,
    ShowcaseFormat.featureGraphic => 1024 / 500,
    ShowcaseFormat.free => null,
  };
}

enum CaptionPlacement { top, bottom, start, end, none }

/// One composed showcase panel: a background, one or more framed screenshots,
/// and an optional bilingual caption.
@freezed
abstract class ShowcasePanel with _$ShowcasePanel {
  const factory ShowcasePanel({
    required String id,
    @Default(ShowcaseFormat.screenshot) ShowcaseFormat format,

    /// Overrides the owning project's background when set.
    ShotBackground? backgroundOverride,

    /// A list, not a single shot: the reference feature graphic overlaps two
    /// devices in one panel.
    @Default(<MediaShot>[]) List<MediaShot> shots,
    @Default('') String captionEn,
    @Default('') String captionAr,
    @Default('') String subtitleEn,
    @Default('') String subtitleAr,
    @Default(CaptionPlacement.top) CaptionPlacement captionPlacement,
    @Default('FFFFFF') String captionColorHex,
    @Default(0) int order,
  }) = _ShowcasePanel;

  factory ShowcasePanel.fromJson(Map<String, dynamic> json) =>
      _$ShowcasePanelFromJson(json);
}
