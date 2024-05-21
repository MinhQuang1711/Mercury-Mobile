import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@Freezed(fromJson: true, toJson: false)
class Product with _$Product {
  const factory Product({
    String? id,
    String? name,
    double? sumCost,
    double? salePrice,
    String? imagePath,
    String? ownerName,
    DateTime? createDate,
    String? createdByName,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}
