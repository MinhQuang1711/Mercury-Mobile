import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

part 'state.freezed.dart';

@freezed
class ComboBoxState with _$ComboBoxState {
  const factory ComboBoxState({required List<ComboBox> comboBoxes}) = _State;
}
