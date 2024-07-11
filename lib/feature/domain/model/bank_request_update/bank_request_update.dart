import 'package:freezed_annotation/freezed_annotation.dart';

import '../bank_info/bank_info.dart';

part 'bank_request_update.freezed.dart';
part 'bank_request_update.g.dart';

@Freezed(fromJson: false, toJson: true)
class BankRequestUpdate with _$BankRequestUpdate {
  const factory BankRequestUpdate({
    String? password,
    BankInfo? bankInfo,
  }) = _BankRequestUpdate;
}
