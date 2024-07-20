/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconGen {
  const $AssetsIconGen();

  /// File path: assets/icon/bar-chart.png
  AssetGenImage get barChart =>
      const AssetGenImage('assets/icon/bar-chart.png');

  /// File path: assets/icon/calendar.png
  AssetGenImage get calendar => const AssetGenImage('assets/icon/calendar.png');

  /// File path: assets/icon/coupon.png
  AssetGenImage get coupon => const AssetGenImage('assets/icon/coupon.png');

  /// File path: assets/icon/customer.png
  AssetGenImage get customer => const AssetGenImage('assets/icon/customer.png');

  /// File path: assets/icon/domain.png
  AssetGenImage get domain => const AssetGenImage('assets/icon/domain.png');

  /// File path: assets/icon/empty_box.png
  AssetGenImage get emptyBox =>
      const AssetGenImage('assets/icon/empty_box.png');

  /// File path: assets/icon/import.png
  AssetGenImage get import => const AssetGenImage('assets/icon/import.png');

  /// File path: assets/icon/import_prod.png
  AssetGenImage get importProd =>
      const AssetGenImage('assets/icon/import_prod.png');

  /// File path: assets/icon/invoice.png
  AssetGenImage get invoice => const AssetGenImage('assets/icon/invoice.png');

  /// File path: assets/icon/invoices.png
  AssetGenImage get invoices => const AssetGenImage('assets/icon/invoices.png');

  /// File path: assets/icon/price-tag.png
  AssetGenImage get priceTag =>
      const AssetGenImage('assets/icon/price-tag.png');

  /// File path: assets/icon/report_box.png
  AssetGenImage get reportBox =>
      const AssetGenImage('assets/icon/report_box.png');

  /// File path: assets/icon/report_time.png
  AssetGenImage get reportTime =>
      const AssetGenImage('assets/icon/report_time.png');

  /// File path: assets/icon/search.png
  AssetGenImage get search => const AssetGenImage('assets/icon/search.png');

  /// File path: assets/icon/trash-bin.png
  AssetGenImage get trashBin =>
      const AssetGenImage('assets/icon/trash-bin.png');

  /// File path: assets/icon/voucher.png
  AssetGenImage get voucher => const AssetGenImage('assets/icon/voucher.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        barChart,
        calendar,
        coupon,
        customer,
        domain,
        emptyBox,
        import,
        importProd,
        invoice,
        invoices,
        priceTag,
        reportBox,
        reportTime,
        search,
        trashBin,
        voucher
      ];
}

class $AssetsImageGen {
  const $AssetsImageGen();

  /// File path: assets/image/AVA.png
  AssetGenImage get ava => const AssetGenImage('assets/image/AVA.png');

  /// File path: assets/image/back_text_field.png
  AssetGenImage get backTextField =>
      const AssetGenImage('assets/image/back_text_field.png');

  /// File path: assets/image/coffee-cup.png
  AssetGenImage get coffeeCup =>
      const AssetGenImage('assets/image/coffee-cup.png');

  /// File path: assets/image/default-avatar.jpg
  AssetGenImage get defaultAvatar =>
      const AssetGenImage('assets/image/default-avatar.jpg');

  /// File path: assets/image/empty.png
  AssetGenImage get empty => const AssetGenImage('assets/image/empty.png');

  /// File path: assets/image/flower.jpg
  AssetGenImage get flower => const AssetGenImage('assets/image/flower.jpg');

  /// List of all assets
  List<AssetGenImage> get values =>
      [ava, backTextField, coffeeCup, defaultAvatar, empty, flower];
}

class Assets {
  Assets._();

  static const $AssetsIconGen icon = $AssetsIconGen();
  static const $AssetsImageGen image = $AssetsImageGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

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
