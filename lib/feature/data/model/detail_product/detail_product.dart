import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_product.freezed.dart';
part 'detail_product.g.dart';

@Freezed(fromJson: true, toJson: false)
class DetailProduct with _$DetailProduct {
  const factory DetailProduct({
    String? id,
    double? weight,
    String? productId,
    String? ingredientId,
  }) = _DetailProduct;

  factory DetailProduct.fromJson(Map<String, dynamic> json) =>
      _$DetailProductFromJson(json);
}
