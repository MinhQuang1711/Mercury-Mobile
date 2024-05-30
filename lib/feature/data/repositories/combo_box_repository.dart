import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';

class ComboBoxRepository extends IComboBoxRepository {
  @override
  Future<DataRespone<List<ComboBox>>> getIngredients() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.ingredientComboBox,
      ),
      parser: (data) =>
          (data as List).map((e) => ComboBox.fromJson(e)).toList(),
    );
  }

  @override
  Future<DataRespone<List<ComboBox>>> getProducts() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.productComboBox,
      ),
      parser: (data) =>
          (data as List).map((e) => ComboBox.fromJson(e)).toList(),
    );
  }

  @override
  Future<DataRespone<List<ComboBox>>> getCustomer() {
    // TODO: implement getCustomer
    throw UnimplementedError();
  }

  @override
  Future<DataRespone<List<Voucher>>> getVouchers() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.voucherComboBox,
      ),
      parser: (data) => (data as List).map((e) => Voucher.fromJson(e)).toList(),
    );
  }
}
