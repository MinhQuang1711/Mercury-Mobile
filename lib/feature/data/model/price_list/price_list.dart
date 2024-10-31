import 'package:freezed_annotation/freezed_annotation.dart';

import '../detail_price_list/detail_price_list.dart';

part 'price_list.freezed.dart';
part 'price_list.g.dart';

@Freezed(fromJson: true, toJson: false)
class PriceList with _$PriceList {
  const factory PriceList({
    String? name,
    List<DetailPriceList>? detailPriceList,
    DateTime? createDate,
    String? createdByName,
    String? ownerName,
    String? id,
  }) = _PriceList;

  factory PriceList.fromJson(Map<String, dynamic> json) =>
      _$PriceListFromJson(json);
}
