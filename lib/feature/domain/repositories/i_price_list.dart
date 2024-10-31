import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

import '../../../core/network/response/data_response.dart';

abstract class IPriceListRepository extends UseCaseNetwork {
  Future<DataRespone> create(PriceListRequest dto);
  Future<DataRespone<PagedList<PriceList>>> get(SearchByName dto);
}
