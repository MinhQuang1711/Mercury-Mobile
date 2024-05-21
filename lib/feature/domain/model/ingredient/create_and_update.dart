// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_and_update.freezed.dart';
part 'create_and_update.g.dart';

@Freezed(fromJson: false, toJson: true)
class CreateAndUpdateIngredient with _$CreateAndUpdateIngredient {
  const factory CreateAndUpdateIngredient({
    String? id,
    @Default("") String name,
    @Default(0) double cost,
    @Default(0) double weight,
  }) = _CreateAndUpdateIngredient;
}
