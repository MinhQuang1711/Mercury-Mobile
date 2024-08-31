import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_by_day.freezed.dart';
part 'report_by_day.g.dart';

@Freezed(fromJson: true, toJson: false)
class ReportByDay with _$ReportByDay {
  const factory ReportByDay({
    int? quantity,
    DateTime? date,
    double? revenue,
    double? discount,
    double? shippingFee,
    double? importPrice,
  }) = _ReportByDay;

  factory ReportByDay.fromJson(Map<String, dynamic> json) =>
      _$ReportByDayFromJson(json);
}
