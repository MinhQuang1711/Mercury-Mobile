import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient.freezed.dart';
part 'ingredient.g.dart';

@Freezed(fromJson: true, toJson: false)
class Ingredient with _$Ingredient {
  const factory Ingredient({
    String? createUser,
    required String id,
    required String name,
    required double cost,
    required double weight,
  }) = _Ingredient;

  factory Ingredient.fromJson(Map<String, Object?> json) =>
      _$IngredientFromJson(json);
}
