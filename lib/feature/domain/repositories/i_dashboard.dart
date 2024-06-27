import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/chart_item/chart_item.dart';
import 'package:mercury/feature/data/model/financial_record/financial_record.dart';

import '../../data/model/financial/financial.dart';

abstract class IDashboardRepository extends UseCaseNetwork {
  Future<DataRespone<List<ChartItem>>> getChartOfDay();
  Future<DataRespone<List<ChartItem>>> getChartOfMonth();
  Future<DataRespone<FinancialRecord>> financialRecordOfDay();
  Future<DataRespone<FinancialRecord>> financialRecordOfMonth();
  Future<DataRespone<List<Financial>>> financialOf7Days();
}
