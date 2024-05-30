import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

abstract class IComboBoxRepository extends UseCaseNetwork {
  Future<DataRespone<List<Voucher>>> getVouchers();
  Future<DataRespone<List<ComboBox>>> getCustomer();
  Future<DataRespone<List<ComboBox>>> getProducts();
  Future<DataRespone<List<ComboBox>>> getIngredients();
}
