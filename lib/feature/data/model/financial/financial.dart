import 'package:freezed_annotation/freezed_annotation.dart';

part 'financial.freezed.dart';
part 'financial.g.dart';

@Freezed(fromJson: true, toJson: false)
class Financial with _$Financial {
  const factory Financial({
    String? date,
    double? revenue,
    double? profit,
  }) = _Financial;

  factory Financial.fromJson(Map<String, dynamic> json) =>
      _$FinancialFromJson(json);
}
