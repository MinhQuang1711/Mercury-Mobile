import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';

import '../../../core/network/response/data_response.dart';

abstract class IBankRepository extends UseCaseNetwork {
  Future<DataRespone<List<Bank>>> getBanks();
}
