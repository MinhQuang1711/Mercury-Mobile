import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/repositories/i_price_list.dart';

class PriceListRepository extends IPriceListRepository {
  @override
  Future<DataRespone> create(PriceListRequest dto) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.POST,
        endPoint: AppRepositoryPath.createPriceList,
        payload: Payload.json(dto.toJson()),
      ),
      parser: (data) {},
    );
  }

  @override
  Future<DataRespone<PagedList<PriceList>>> get(SearchByName dto) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        query: dto.toJson(),
        endPoint: AppRepositoryPath.getPriceList,
      ),
      parser: (data) => PagedList<PriceList>.fromJson(
        data,
        (e) => PriceList.fromJson(e),
      ),
    );
  }
}
