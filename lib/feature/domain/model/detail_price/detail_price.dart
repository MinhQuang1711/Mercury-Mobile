import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_price.freezed.dart';
part 'detail_price.g.dart';

@Freezed(fromJson: false, toJson: true)
class DetailPrice with _$DetailPrice {
  const factory DetailPrice({
    String? productId,
    double? salePrice,
  }) = _DetailPrice;
}
