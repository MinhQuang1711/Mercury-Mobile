import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

part 'product_request.freezed.dart';
part 'product_request.g.dart';

@Freezed(fromJson: false, toJson: true)
class ProductRequest with _$ProductRequest {
  const factory ProductRequest({
    String? id,
    double? price,
    String? name,
    String? attachFile,
    List<ComboBox>? detailProducts,
  }) = _ProductRequest;
}
