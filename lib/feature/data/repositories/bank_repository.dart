import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
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

  @override
  Future<DataRespone<String>> lookUp({
    required accountNumber,
    required String bin,
  }) async {
    return await excuter(
      paramRequest: ParamRequest(
          method: Method.POST,
          endPoint: "v2/lookup",
          header: {
            "X-Api-Key": "demo-2a02822e-ede3-4970-999b-18853d8e0ced",
            "X-Client-Id": "demo-a34a5775-ae15-4a05-8422-1023eccbda3f"
          },
          baseUrl: "https://api.vietqr.io/",
          payload: Payload.json({"accountNumber": accountNumber, "bin": bin})),
      parser: (data) => (data["data"]["accountName"] as String),
    );
  }
}
