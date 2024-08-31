import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/report_by_day/report_by_day.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/repositories/i_report.dart';

class ReportRepository extends IReportRepository {
  @override
  Future<DataRespone<List<ReportByDay>>> getSaleReport(
    DateTime end,
    DateTime start,
  ) async {
    return await excuter(
      paramRequest: ParamRequest(
          method: Method.GET,
          endPoint: AppRepositoryPath.saleReport,
          query: {"endDate": end, "startDate": start}),
      parser: (data) =>
          (data as List).map((e) => ReportByDay.fromJson(e)).toList(),
    );
  }
}
