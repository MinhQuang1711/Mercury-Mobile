import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'state.freezed.dart';

@freezed
class IngredientState with _$IngredientState {
  const factory IngredientState.init() = _Init;
  const factory IngredientState.loading() = _Loading;
  const factory IngredientState.created() = _Created;
  const factory IngredientState.failure(String msg) = _Failure;
  const factory IngredientState.got({
    required SearchByName searchByName,
    required PagedList<Ingredient> pagedList,
  }) = _Got;
}
