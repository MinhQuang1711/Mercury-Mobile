import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class SaleReportState with _$SaleReportState {
  const factory SaleReportState(
    DateTime? startDate,
    DateTime? endDate,
  ) = _State;
}
