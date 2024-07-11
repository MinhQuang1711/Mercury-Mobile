import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';

part 'event.freezed.dart';

@freezed
class AccountEvent with _$AccountEvent {
  const factory AccountEvent.updateBank(BankRequestUpdate request) =
      _updateBank;
}
