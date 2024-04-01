import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/ingredient/create_and_update.dart';

import '../model/search_by_name/search_by_name.dart';

abstract class IIngredientRepository extends UseCaseNetwork {
  Future<DataRespone<PagedList<Ingredient>>> get({
    required SearchByName searchByName,
  });
  Future<DataRespone> create({required CreateAndUpdateIngredient dto});
}
