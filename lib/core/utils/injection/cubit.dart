import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';

void registerCubit() {
  getIt.registerFactory<AuthenCubit>(() => AuthenCubit());
  getIt.registerFactory<GetIngredientCubit>(() => GetIngredientCubit());
  getIt.registerFactory<CreateIngredientCubit>(() => CreateIngredientCubit());
  getIt.registerFactory<GetProductCubit>(() => GetProductCubit());
}
