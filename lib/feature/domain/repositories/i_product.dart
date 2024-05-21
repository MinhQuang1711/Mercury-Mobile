import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

import '../../../core/use_case/use_case.dart';

abstract class IProductRepository extends UseCaseNetwork {
  Future<DataRespone> create(ProductRequest productRequest);
  Future<DataRespone<PagedList<Product>>> getProducts(SearchByName searchDto);
}
