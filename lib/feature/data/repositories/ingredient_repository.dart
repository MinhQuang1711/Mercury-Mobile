import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';

import '../../domain/model/search_by_name/search_by_name.dart';

class IngredientRepository extends IIngredientRepository {
  @override
  Future<DataRespone<PagedList<Ingredient>>> get({
    required SearchByName searchByName,
  }) {
    return excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        query: searchByName.toJson(),
        endPoint: AppRepositoryPath.getIngredient,
      ),
      parser: (data) => PagedList.fromJson(data, (e) => Ingredient.fromJson(e)),
    );
  }
}
