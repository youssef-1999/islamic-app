// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Vector.svg
  String get vector => 'assets/images/Vector.svg';

  /// File path: assets/images/ic_hadeth.svg
  String get icHadeth => 'assets/images/ic_hadeth.svg';

  /// File path: assets/images/ic_radio.svg
  String get icRadio => 'assets/images/ic_radio.svg';

  /// File path: assets/images/ic_sebha.svg
  String get icSebha => 'assets/images/ic_sebha.svg';

  /// File path: assets/images/ic_splash.png
  AssetGenImage get icSplash =>
      const AssetGenImage('assets/images/ic_splash.png');

  /// File path: assets/images/ic_time.svg
  String get icTime => 'assets/images/ic_time.svg';

  /// File path: assets/images/intro_1.png
  AssetGenImage get intro1 => const AssetGenImage('assets/images/intro_1.png');

  /// File path: assets/images/intro_2.png
  AssetGenImage get intro2 => const AssetGenImage('assets/images/intro_2.png');

  /// File path: assets/images/intro_3.png
  AssetGenImage get intro3 => const AssetGenImage('assets/images/intro_3.png');

  /// File path: assets/images/intro_4.png
  AssetGenImage get intro4 => const AssetGenImage('assets/images/intro_4.png');

  /// File path: assets/images/intro_5.png
  AssetGenImage get intro5 => const AssetGenImage('assets/images/intro_5.png');

  /// File path: assets/images/islami.png
  AssetGenImage get islami => const AssetGenImage('assets/images/islami.png');

  /// File path: assets/images/quran_sura.png
  AssetGenImage get quranSura =>
      const AssetGenImage('assets/images/quran_sura.png');

  /// File path: assets/images/quran_tab_bg.png
  AssetGenImage get quranTabBg =>
      const AssetGenImage('assets/images/quran_tab_bg.png');

  /// File path: assets/images/sura_number.svg
  String get suraNumber => 'assets/images/sura_number.svg';

  /// List of all assets
  List<dynamic> get values => [
    vector,
    icHadeth,
    icRadio,
    icSebha,
    icSplash,
    icTime,
    intro1,
    intro2,
    intro3,
    intro4,
    intro5,
    islami,
    quranSura,
    quranTabBg,
    suraNumber,
  ];
}

abstract final class Assets {
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}
