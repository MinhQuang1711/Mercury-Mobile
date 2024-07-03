import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class GlobalState with _$GlobalState {
  const factory GlobalState({
    required bool reloadDasboard,
    required bool reloadIngredient,
    required bool reloadSaleInvoice,
    required bool reloadImportInvoice,
  }) = _State;
}
