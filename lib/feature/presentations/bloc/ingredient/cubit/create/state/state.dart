import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/ingredient/create_and_update.dart';

part 'state.freezed.dart';

@freezed
class CreateIngredientState with _$CreateIngredientState {
  const factory CreateIngredientState(
      {required CreateAndUpdateIngredient dto}) = _State;
}
