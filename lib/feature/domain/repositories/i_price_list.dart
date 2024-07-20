import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';

import '../../../core/network/response/data_response.dart';

abstract class IPriceListRepository extends UseCaseNetwork {
  Future<DataRespone> create(PriceListRequest dto);
}
