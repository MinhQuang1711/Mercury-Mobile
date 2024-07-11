import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';
import 'package:mercury/feature/domain/model/bank_info/bank_info.dart';

part 'state.freezed.dart';

@freezed
class UpdateBankState with _$UpdateBankState {
  const factory UpdateBankState({
    required List<Bank> banks,
    required BankInfo bankInfo,
    // required SearchByName searchByName,
  }) = _State;
}
