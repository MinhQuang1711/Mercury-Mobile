import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';

abstract class IAccountRepository extends UseCaseNetwork {
  Future<DataRespone> updateBank(BankRequestUpdate request);
}
