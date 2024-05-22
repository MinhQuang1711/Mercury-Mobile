import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';

import '../../../feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';

void registerCubit() {
  getIt.registerFactory<AuthenCubit>(() => AuthenCubit());
  getIt.registerFactory<GetIngredientCubit>(() => GetIngredientCubit());
  getIt.registerFactory<CreateIngredientCubit>(() => CreateIngredientCubit());
  getIt.registerFactory<GetProductCubit>(() => GetProductCubit());
  getIt.registerFactory<ProductCubit>(() => ProductCubit());
  getIt.registerFactory<ComboBoxCubit>(
      () => ComboBoxCubit(getIt.get<IComboBoxRepository>()));
}
