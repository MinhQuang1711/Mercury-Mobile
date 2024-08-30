import 'package:mercury/core/use_case/use_case.dart';

import '../../../core/network/response/data_response.dart';
import '../../data/model/report_by_day/report_by_day.dart';

abstract class IReportRepository extends UseCaseNetwork {
  Future<DataRespone<List<ReportByDay>>> getSaleReport(
    DateTime end,
    DateTime start,
  );
}
