import 'package:freezed_annotation/freezed_annotation.dart';

import '../detail_price/detail_price.dart';

part 'price_list_request.freezed.dart';
part 'price_list_request.g.dart';

@Freezed(toJson: true, fromJson: false)
class PriceListRequest with _$PriceListRequest {
  const factory PriceListRequest({
    String? name,
    List<DetailPrice>? detailPrices,
  }) = _PriceListRequest;
}
