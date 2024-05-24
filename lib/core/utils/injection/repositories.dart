import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/repositories/authen_repository.dart';
import 'package:mercury/feature/data/repositories/combo_box_repository.dart';
import 'package:mercury/feature/data/repositories/ingredient_repository.dart';
import 'package:mercury/feature/data/repositories/product_repository.dart';
import 'package:mercury/feature/data/repositories/sale_invoice_repository.dart';
import 'package:mercury/feature/domain/repositories/i_authen.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';
import 'package:mercury/feature/domain/repositories/i_ingredient.dart';
import 'package:mercury/feature/domain/repositories/i_product.dart';
import 'package:mercury/feature/domain/repositories/i_sale_invoice.dart';

void registerRepository() {
  getIt.registerLazySingleton<IAuthenRepository>(() => AuthenRepository());
  getIt.registerLazySingleton<IIngredientRepository>(
      () => IngredientRepository());
  getIt.registerLazySingleton<IProductRepository>(() => ProductRepository());
  getIt.registerLazySingleton<IComboBoxRepository>(() => ComboBoxRepository());
  getIt.registerLazySingleton<ISaleInvoiceRepository>(
      () => SaleInvoiceRepository());
}
