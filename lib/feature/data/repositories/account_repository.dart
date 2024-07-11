import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';
import 'package:mercury/feature/domain/repositories/i_account_repository.dart';

class AccountRepository extends IAccountRepository {
  @override
  Future<DataRespone> updateBank(BankRequestUpdate request) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.PUT,
        payload: Payload.json(request.toJson()),
        endPoint: AppRepositoryPath.updateBank,
      ),
      parser: (data) {},
    );
  }
}
