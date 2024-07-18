/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:vector_graphics/vector_graphics.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/app_icon_1.png
  AssetGenImage get appIcon1 =>
      const AssetGenImage('assets/images/app_icon_1.png');

  /// File path: assets/images/login_background_image.png
  AssetGenImage get loginBackgroundImage =>
      const AssetGenImage('assets/images/login_background_image.png');

  /// File path: assets/images/login_background_image_2.png
  AssetGenImage get loginBackgroundImage2 =>
      const AssetGenImage('assets/images/login_background_image_2.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// File path: assets/images/support_banner.png
  AssetGenImage get supportBanner =>
      const AssetGenImage('assets/images/support_banner.png');

  /// File path: assets/images/vneid.webp
  AssetGenImage get vneid => const AssetGenImage('assets/images/vneid.webp');

  /// List of all assets
  List<AssetGenImage> get values => [
        appIcon1,
        loginBackgroundImage,
        loginBackgroundImage2,
        splash,
        supportBanner,
        vneid
      ];
}

class $AssetsSvgGen {
  const $AssetsSvgGen();

  /// File path: assets/svg/Search scan.svg
  SvgGenImage get searchScan => const SvgGenImage('assets/svg/Search scan.svg');

  /// File path: assets/svg/bhld.svg
  SvgGenImage get bhld => const SvgGenImage('assets/svg/bhld.svg');

  /// File path: assets/svg/bhtn.svg
  SvgGenImage get bhtn => const SvgGenImage('assets/svg/bhtn.svg');

  /// File path: assets/svg/bhxh.svg
  SvgGenImage get bhxh => const SvgGenImage('assets/svg/bhxh.svg');

  /// File path: assets/svg/bhyt.svg
  SvgGenImage get bhyt => const SvgGenImage('assets/svg/bhyt.svg');

  /// File path: assets/svg/bhyt_2.svg
  SvgGenImage get bhyt2 => const SvgGenImage('assets/svg/bhyt_2.svg');

  /// File path: assets/svg/certification.svg
  SvgGenImage get certification =>
      const SvgGenImage('assets/svg/certification.svg');

  /// File path: assets/svg/chatbot.svg
  SvgGenImage get chatbot => const SvgGenImage('assets/svg/chatbot.svg');

  /// File path: assets/svg/company.svg
  SvgGenImage get company => const SvgGenImage('assets/svg/company.svg');

  /// File path: assets/svg/hangthang.svg
  SvgGenImage get hangthang => const SvgGenImage('assets/svg/hangthang.svg');

  /// File path: assets/svg/history.svg
  SvgGenImage get history => const SvgGenImage('assets/svg/history.svg');

  /// File path: assets/svg/messages.svg
  SvgGenImage get messages => const SvgGenImage('assets/svg/messages.svg');

  /// File path: assets/svg/note.svg
  SvgGenImage get note => const SvgGenImage('assets/svg/note.svg');

  /// File path: assets/svg/note_1.svg
  SvgGenImage get note1 => const SvgGenImage('assets/svg/note_1.svg');

  /// File path: assets/svg/note_2.svg
  SvgGenImage get note2 => const SvgGenImage('assets/svg/note_2.svg');

  /// File path: assets/svg/organization.svg
  SvgGenImage get organization =>
      const SvgGenImage('assets/svg/organization.svg');

  /// File path: assets/svg/periodic.svg
  SvgGenImage get periodic => const SvgGenImage('assets/svg/periodic.svg');

  /// File path: assets/svg/scan-barcode.svg
  SvgGenImage get scanBarcode =>
      const SvgGenImage('assets/svg/scan-barcode.svg');

  /// File path: assets/svg/state agencies.svg
  SvgGenImage get stateAgencies =>
      const SvgGenImage('assets/svg/state agencies.svg');

  /// File path: assets/svg/thatnghiep.svg
  SvgGenImage get thatnghiep => const SvgGenImage('assets/svg/thatnghiep.svg');

  /// File path: assets/svg/vneid.svg
  SvgGenImage get vneid => const SvgGenImage('assets/svg/vneid.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
        searchScan,
        bhld,
        bhtn,
        bhxh,
        bhyt,
        bhyt2,
        certification,
        chatbot,
        company,
        hangthang,
        history,
        messages,
        note,
        note1,
        note2,
        organization,
        periodic,
        scanBarcode,
        stateAgencies,
        thatnghiep,
        vneid
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
  static const $AssetsSvgGen svg = $AssetsSvgGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

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
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
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

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = false;

  const SvgGenImage.vec(
    this._assetName, {
    this.size,
    this.flavors = const {},
  }) : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final BytesLoader loader;
    if (_isVecFormat) {
      loader = AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
      );
    }
    return SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter: colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
