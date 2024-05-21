import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';

import '../../../feature/domain/repositories/i_authen.dart';

void registerBloc() {
  getIt.registerFactory<AuthenBloc>(
      () => AuthenBloc(getIt.get<IAuthenRepository>()));
  getIt.registerFactory<IngredientBloc>(
      () => IngredientBloc(getIt.get<IIngredientRepository>()));
  getIt.registerFactory<ProductBloc>(
      () => ProductBloc(getIt.get<IProductRepository>()));
}
