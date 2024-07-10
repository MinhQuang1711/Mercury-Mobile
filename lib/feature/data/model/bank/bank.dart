import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank.freezed.dart';
part 'bank.g.dart';

@Freezed(fromJson: true)
class Bank with _$Bank {
  const factory Bank({
    int? id,
    String? bin,
    String? name,
    String? code,
    String? logo,
    String? shortName,
    int? transferSupported,
    int? lookupSupported,
  }) = _Bank;

  factory Bank.fromJson(Map<String, dynamic> json) => _$BankFromJson(json);
}
