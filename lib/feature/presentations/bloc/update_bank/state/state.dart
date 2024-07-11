import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';

part 'state.freezed.dart';

@freezed
class UpdateBankState with _$UpdateBankState {
  const factory UpdateBankState({
    required List<Bank> banks,
    // required SearchByName searchByName,
  }) = _State;
}
