import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/repositories/authen_repository.dart';
import 'package:mercury/feature/data/repositories/ingredient_repository.dart';
import 'package:mercury/feature/data/repositories/product_repository.dart';
import 'package:mercury/feature/domain/repositories/i_authen.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';

void registerRepository() {
  getIt.registerLazySingleton<IAuthenRepository>(() => AuthenRepository());
  getIt.registerLazySingleton<IIngredientRepository>(
      () => IngredientRepository());
  getIt.registerLazySingleton<IProductRepository>(() => ProductRepository());
}
