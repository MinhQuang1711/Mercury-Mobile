import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';

import '../../../feature/domain/repositories/i_authen.dart';
import '../../../feature/domain/repositories/i_sale_invoice.dart';
import '../../../feature/presentations/bloc/sale_invoice/bloc/bloc.dart';

void registerBloc() {
  getIt.registerFactory<AuthenBloc>(
      () => AuthenBloc(getIt.get<IAuthenRepository>()));
  getIt.registerFactory<IngredientBloc>(
      () => IngredientBloc(getIt.get<IIngredientRepository>()));
  getIt.registerFactory<ProductBloc>(
      () => ProductBloc(getIt.get<IProductRepository>()));
  getIt.registerFactory<SaleInvoiceBloc>(
      () => SaleInvoiceBloc(getIt.get<ISaleInvoiceRepository>()));
  getIt.registerFactory<ImportInvoiceBloc>(
      () => ImportInvoiceBloc(getIt.get<IImportInvoiceRepository>()));
}
