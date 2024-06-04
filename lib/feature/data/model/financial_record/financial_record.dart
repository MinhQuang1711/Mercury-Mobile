// To parse this JSON data, do
//
//     final financialRecord = financialRecordFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial_record.freezed.dart';
part 'financial_record.g.dart';

@Freezed(fromJson: true, toJson: false)
class FinancialRecord with _$FinancialRecord {
  const factory FinancialRecord({
    double? revenue,
    double? profit,
    double? importCost,
  }) = _FinancialRecord;

  factory FinancialRecord.fromJson(Map<String, dynamic> json) =>
      _$FinancialRecordFromJson(json);
}
