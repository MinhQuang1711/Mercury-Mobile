import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/user/user.dart';

import '../../../../../data/model/token/token.dart';

part 'state.freezed.dart';

@freezed
class AuthenState with _$AuthenState {
  const factory AuthenState.init() = INIT;
  const factory AuthenState.loading() = LOADING;
  const factory AuthenState.failure(String msg) = FAILD;
  const factory AuthenState.gotUser(User user) = GOT_USER;
  const factory AuthenState.loginSuccess(Token token) = LOGIN_SUCCESS;
}
