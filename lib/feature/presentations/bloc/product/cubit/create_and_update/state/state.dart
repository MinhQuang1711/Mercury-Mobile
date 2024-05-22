import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';

import '../../../../../../domain/model/combo_box/combo_box.dart';

part 'state.freezed.dart';

@freezed
class ProductCubitState with _$ProductCubitState {
  const factory ProductCubitState({
    required ProductRequest dto,
    required List<ComboBox> comboBoxes,
  }) = _State;
}
