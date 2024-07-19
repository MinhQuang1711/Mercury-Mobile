import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';

import '../../../../../domain/model/combo_box/combo_box.dart';

part 'state.freezed.dart';

@freezed
class PriceListState with _$PriceListState {
  const factory PriceListState({
    required PriceListRequest dto,
    required List<ComboBox> comboBoxes,
  }) = _State;
}
