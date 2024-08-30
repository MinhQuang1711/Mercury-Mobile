import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
class SaleReportEvent with _$SaleReportEvent {
  const factory SaleReportEvent.getSales(DateTime start, DateTime end) =
      _GetSales;
}
