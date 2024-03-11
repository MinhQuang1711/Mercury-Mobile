import 'package:mercury/core/network/request/param_payload.dart';
import 'package:mercury/core/network/request/payload/payload.dart';
import 'package:mercury/core/network/response/data_response.dart';
import 'package:mercury/feature/data/model/token/token.dart';
import 'package:mercury/feature/data/model/user/user.dart';
import 'package:mercury/feature/data/repository_path/path.dart';
import 'package:mercury/feature/domain/enum/method.dart';
import 'package:mercury/feature/domain/model/login_dto/login_dto.dart';
import 'package:mercury/feature/domain/repositories/i_authen.dart';

class AuthenRepository extends IAuthenRepository {
  @override
  Future<DataRespone<Token>> login(LoginDto dto) async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.POST,
        endPoint: AppRepositoryPath.login,
        payload: Payload.json(dto.toJson()),
      ),
      parser: (data) => Token.fromJson(data),
    );
  }

  @override
  Future<DataRespone<User>> getUser() async {
    return await excuter(
      paramRequest: ParamRequest(
        method: Method.GET,
        endPoint: AppRepositoryPath.getUser,
      ),
      parser: (data) => User.fromJson(data),
    );
  }
}
