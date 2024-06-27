import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/chart_item/chart_item.dart';
import 'package:mercury/feature/data/model/financial/financial.dart';
import 'package:mercury/feature/data/model/financial_record/financial_record.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/repositories/i_dashboard.dart';

class DashboardRepositoty extends IDashboardRepository {
  @override
  Future<DataRespone<List<ChartItem>>> getChartOfDay() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.chartOfDay,
      ),
      parser: (data) =>
          (data as List).map((e) => ChartItem.fromJson(e)).toList(),
    );
  }

  @override
  Future<DataRespone<List<ChartItem>>> getChartOfMonth() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.chartOfMonth,
      ),
      parser: (data) =>
          (data as List).map((e) => ChartItem.fromJson(e)).toList(),
    );
  }

  @override
  Future<DataRespone<FinancialRecord>> financialRecordOfDay() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.financialRecordOfDay,
      ),
      parser: (data) => FinancialRecord.fromJson(data),
    );
  }

  @override
  Future<DataRespone<FinancialRecord>> financialRecordOfMonth() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.financialRecordOfMonth,
      ),
      parser: (data) => FinancialRecord.fromJson(data),
    );
  }

  @override
  Future<DataRespone<List<Financial>>> financialOf7Days() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.financialOf7Days,
      ),
      parser: (data) =>
          (data as List).map((e) => Financial.fromJson(e)).toList(),
    );
  }
}
