import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/product/product_query.dart';

part 'state.freezed.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.init() = _Init;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.created(String msg) = _Created;
  const factory ProductState.updated(String msg) = _Updated;
  const factory ProductState.deleted(String msg) = _Deleted;
  const factory ProductState.failure(String msg) = _Failure;
  const factory ProductState.got({
    required ProdductQuery searchByName,
    required PagedList<Product> pagedList,
  }) = _Got;
}
