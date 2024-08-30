import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/model/report_by_day/report_by_day.dart';

part 'state.freezed.dart';

@freezed
class SaleReportBlocState with _$SaleReportBlocState {
  const factory SaleReportBlocState.init() = _Init;
  const factory SaleReportBlocState.loading() = _Loading;
  const factory SaleReportBlocState.failure(String msg) = _Failure;
  const factory SaleReportBlocState.getSaleSuccess(List<ReportByDay> reports) =
      _GetSaleSuccess;
}
