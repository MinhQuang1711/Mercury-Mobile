import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/chart_item/chart_item.dart';
import 'package:mercury/feature/data/model/financial_record/financial_record.dart';

part 'state.freezed.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState({
    required List<ChartItem> chartOfDay,
    required List<ChartItem> chartOfMonth,
    required FinancialRecord financialRecordOfDay,
    required FinancialRecord financialRecordOfMonth,
  }) = _State;
}
