import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/core/use_case/use_case.dart';
import 'package:mercury/feature/data/model/token/token.dart';
import 'package:mercury/feature/domain/model/login_dto/login_dto.dart';

abstract class IAuthenRepository extends UseCaseNetwork {
  Future<DataRespone<Token>> login(LoginDto dto);
}
