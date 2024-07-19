// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_query.freezed.dart';
part 'product_query.g.dart';

@Freezed(fromJson: false, toJson: true)
class ProdductQuery with _$ProdductQuery {
  const factory ProdductQuery({
    String? name,
    String? priceListId,
    @Default(20) int pageSize,
    @Default(1) int pageNumber,
  }) = _ProdductQuery;
}
