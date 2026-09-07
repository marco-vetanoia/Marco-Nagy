import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../features/portfolio_content/domain/entities/image_ref.dart';
import 'safe_asset_image.dart';

/// Renders an [ImageRef] whatever its source, degrading to [fallback] rather
/// than throwing when the file is missing.
///
/// A missing asset is the normal case while authoring: an image picked in debug
/// is written to `assets/<section>/` but is not in the bundle until the next
/// build, so [AppImage] falls back instead of showing a grey exception box.
class AppImage extends StatelessWidget {
  const AppImage({
    required this.image,
    required this.fallback,
    this.fit = BoxFit.cover,
    this.width,
    this.height,
    super.key,
  });

  final ImageRef image;
  final Widget fallback;
  final BoxFit fit;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    if (image.isEmpty) return fallback;

    return switch (image.kind) {
      ImageSourceKind.asset => SafeAssetImage(
        assetPath: image.value,
        fallback: fallback,
        fit: fit,
        width: width,
        height: height,
      ),
      ImageSourceKind.network => Image.network(
        image.value,
        fit: fit,
        width: width,
        height: height,
        errorBuilder: (context, error, stackTrace) => fallback,
      ),
      ImageSourceKind.embedded => _EmbeddedImage(
        base64Data: image.value,
        fallback: fallback,
        fit: fit,
        width: width,
        height: height,
      ),
    };
  }
}

class _EmbeddedImage extends StatelessWidget {
  const _EmbeddedImage({
    required this.base64Data,
    required this.fallback,
    required this.fit,
    this.width,
    this.height,
  });

  final String base64Data;
  final Widget fallback;
  final BoxFit fit;
  final double? width;
  final double? height;

  /// Strips a `data:image/png;base64,` prefix if the value carries one.
  Uint8List? _decode() {
    try {
      final comma = base64Data.indexOf(',');
      final payload = comma == -1
          ? base64Data
          : base64Data.substring(comma + 1);
      return base64Decode(payload);
    } on Object {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    final bytes = _decode();
    if (bytes == null) return fallback;
    return Image.memory(
      bytes,
      fit: fit,
      width: width,
      height: height,
      errorBuilder: (context, error, stackTrace) => fallback,
    );
  }
}
