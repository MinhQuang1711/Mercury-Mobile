import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

import '../../../../../../data/model/ingredinent/ingredient.dart';

part 'state.freezed.dart';

@freezed
class GetIngredientState with _$GetIngredientState {
  const factory GetIngredientState({
    required List<Ingredient> list,
    required SearchByName searchByName,
  }) = _State;
}
