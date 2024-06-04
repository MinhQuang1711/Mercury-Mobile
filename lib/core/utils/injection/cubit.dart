import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';
import 'package:mercury/feature/domain/repositories/i_dashboard.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/cubit.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';

import '../../../feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';

void registerCubit() {
  getIt.registerFactory<AuthenCubit>(() => AuthenCubit());
  getIt.registerFactory<GetIngredientCubit>(() => GetIngredientCubit());
  getIt.registerFactory<GetSaleInvoiceCubit>(() => GetSaleInvoiceCubit());
  getIt.registerFactory<CreateIngredientCubit>(() => CreateIngredientCubit());
  getIt.registerFactory<GetProductCubit>(() => GetProductCubit());
  getIt.registerFactory<ProductCubit>(() => ProductCubit());
  getIt.registerFactory<SplashCubit>(() => SplashCubit());
  getIt.registerFactory<CommonSaleInvoiceCubit>(() => CommonSaleInvoiceCubit());
  getIt.registerFactory<ComboBoxCubit>(
      () => ComboBoxCubit(getIt.get<IComboBoxRepository>()));
  getIt.registerFactory<GetImportInvoiceCubit>(() => GetImportInvoiceCubit());
  getIt.registerFactory<CommonImportInvoiceCubit>(
      () => CommonImportInvoiceCubit());
  getIt.registerLazySingleton<DashboardCubit>(
      () => DashboardCubit(getIt.get<IDashboardRepository>()));
}
