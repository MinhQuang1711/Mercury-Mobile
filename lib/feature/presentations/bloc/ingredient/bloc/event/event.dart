import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'event.freezed.dart';

@freezed
class IngredientEvent with _$IngredientEvent {
  const factory IngredientEvent.get({required SearchByName searchByName}) =
      _Get;
}
