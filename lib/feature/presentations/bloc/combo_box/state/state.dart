import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

part 'state.freezed.dart';

@freezed
class ComboBoxState with _$ComboBoxState {
  const factory ComboBoxState({
    required List<ComboBox> users,
    required List<Voucher> voucher,
    required List<ComboBox> products,
    required List<ComboBox> ingredient,
    required List<ComboBox> customer,
  }) = _State;
}
