import 'package:freezed_annotation/freezed_annotation.dart';

import '../product/product.dart';

part 'detail_price_list.freezed.dart';
part 'detail_price_list.g.dart';

@Freezed(fromJson: true, toJson: false)
class DetailPriceList with _$DetailPriceList {
  const factory DetailPriceList({
    String? productId,
    String? priceListId,
    int? salePrice,
    Product? product,
    String? id,
  }) = _DetailPriceList;

  factory DetailPriceList.fromJson(Map<String, dynamic> json) =>
      _$DetailPriceListFromJson(json);
}
