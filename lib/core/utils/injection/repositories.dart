import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/repositories/authen_repository.dart';
import 'package:mercury/feature/data/repositories/bank_repository.dart';
import 'package:mercury/feature/data/repositories/combo_box_repository.dart';
import 'package:mercury/feature/data/repositories/customer_repository.dart';
import 'package:mercury/feature/data/repositories/dashboard_repository.dart';
import 'package:mercury/feature/data/repositories/import_invoice_repository.dart';
import 'package:mercury/feature/data/repositories/ingredient_repository.dart';
import 'package:mercury/feature/data/repositories/product_repository.dart';
import 'package:mercury/feature/data/repositories/sale_invoice_repository.dart';
import 'package:mercury/feature/data/repositories/voucher_repository.dart';
import 'package:mercury/feature/domain/repositories/i_authen.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';
import 'package:mercury/feature/domain/repositories/i_customer.dart';
import 'package:mercury/feature/domain/repositories/i_dashboard.dart';
import 'package:mercury/feature/domain/repositories/i_import_invoice.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/domain/repositories/i_sale_invoice.dart';
import 'package:mercury/feature/domain/repositories/i_voucher.dart';
import 'package:mercury/feature/domain/repositories/ibank_repository.dart';

void registerRepository() {
  getIt.registerLazySingleton<IAuthenRepository>(() => AuthenRepository());
  getIt.registerLazySingleton<IIngredientRepository>(
      () => IngredientRepository());
  getIt.registerLazySingleton<IProductRepository>(() => ProductRepository());
  getIt.registerLazySingleton<IComboBoxRepository>(() => ComboBoxRepository());
  getIt.registerLazySingleton<ISaleInvoiceRepository>(
      () => SaleInvoiceRepository());
  getIt.registerLazySingleton<IImportInvoiceRepository>(
      () => ImportInvoiceRepository());
  getIt
      .registerLazySingleton<IDashboardRepository>(() => DashboardRepositoty());
  getIt.registerLazySingleton<IVoucherRepository>(() => VoucherRepository());
  getIt.registerLazySingleton<ICustomerRepository>(() => CustomerRepository());
  getIt.registerLazySingleton<IBankRepository>(() => BankRepository());
}
