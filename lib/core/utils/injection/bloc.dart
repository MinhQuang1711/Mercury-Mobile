import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/i_account_repository.dart';
import 'package:mercury/feature/domain/repositories/i_customer.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_price_list.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/domain/repositories/i_voucher.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/bloc.dart';

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
  getIt.registerFactory<VoucherBloc>(
      () => VoucherBloc(getIt.get<IVoucherRepository>()));
  getIt.registerFactory<CustomerBloc>(
      () => CustomerBloc(getIt.get<ICustomerRepository>()));
  getIt.registerFactory<AccountBloc>(
      () => AccountBloc(getIt.get<IAccountRepository>()));
  getIt.registerFactory<PriceListBloc>(
      () => PriceListBloc(getIt.get<IPriceListRepository>()));
}
