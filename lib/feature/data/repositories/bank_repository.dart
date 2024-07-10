import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/repositories/ibank_repository.dart';

class BankRepository extends IBankRepository {
  @override
  Future<DataRespone<List<Bank>>> getBanks() async {
    return await excuter(
      paramRequest: ParamRequest(
          method: Method.GET,
          endPoint: "v2/banks",
          baseUrl: "https://api.vietqr.io/"),
      parser: (data) =>
          (data["data"] as List).map((e) => Bank.fromJson(e)).toList(),
    );
  }
}
