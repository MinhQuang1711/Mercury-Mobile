import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'state.freezed.dart';

@freezed
class GetProductState with _$GetProductState {
  const factory GetProductState({
    required List<Product> list,
    required SearchByName searchByName,
  }) = _State;
}
