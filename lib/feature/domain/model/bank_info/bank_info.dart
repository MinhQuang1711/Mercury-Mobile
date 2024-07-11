import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_info.freezed.dart';
part 'bank_info.g.dart';

@Freezed(fromJson: false, toJson: true)
class BankInfo with _$BankInfo {
  const factory BankInfo({
    String? bankBin,
    String? bankCode,
    String? reciverName,
    String? bankShortName,
    String? reciverAccountNumber,
  }) = _Bank;
}
