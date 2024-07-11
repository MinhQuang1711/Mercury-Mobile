import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';

part 'state.freezed.dart';

@freezed
class UpdateBankState with _$UpdateBankState {
  const factory UpdateBankState({
    required List<Bank> banks,
    required BankRequestUpdate request,
    // required SearchByName searchByName,
  }) = _State;
}
