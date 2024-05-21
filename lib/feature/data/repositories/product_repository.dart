import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';

class ProductRepository extends IProductRepository {
  @override
  Future<DataRespone<PagedList<Product>>> getProducts(
      SearchByName searchDto) async {
    return await excuter(
        paramRequest: ParamRequest(
          method: Method.GET,
          query: searchDto.toJson(),
          endPoint: AppRepositoryPath.getProduct,
        ),
        parser: (data) => PagedList.fromJson(data, (e) => Product.fromJson(e)));
  }
}
