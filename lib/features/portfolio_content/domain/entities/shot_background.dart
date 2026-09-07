import 'package:freezed_annotation/freezed_annotation.dart';

import 'image_ref.dart';

part 'shot_background.freezed.dart';
part 'shot_background.g.dart';

enum ShotBackgroundStyle {
  none,
  solid,
  linearGradient,
  radialGradient,

  /// A solid ground with an organic white blob shape on top, the Bookly
  /// feature-graphic treatment.
  blob,

  /// A full-bleed background image.
  image;

  static const List<ShotBackgroundStyle> selectable = <ShotBackgroundStyle>[
    none,
    solid,
    linearGradient,
    radialGradient,
    blob,
    image,
  ];
}

/// How the ground behind a showcase panel is painted.
@freezed
abstract class ShotBackground with _$ShotBackground {
  const factory ShotBackground({
    @Default(ShotBackgroundStyle.none) ShotBackgroundStyle style,
    @Default('0A1533') String colorHex,
    @Default('1B3F8F') String colorHex2,
    @Default(ImageRef()) ImageRef image,

    /// Scrim laid over the background so caption text stays readable on a
    /// light photo. This is the single most common reason a panel looks broken.
    @Default(0.25) double overlayOpacity,
    @Default(0) double blurSigma,
  }) = _ShotBackground;

  const ShotBackground._();

  factory ShotBackground.fromJson(Map<String, dynamic> json) =>
      _$ShotBackgroundFromJson(json);

  bool get isEmpty => style == ShotBackgroundStyle.none;
}
