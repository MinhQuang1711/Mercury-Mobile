import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/model/token/token.dart';

part 'state.freezed.dart';

@freezed
class AuthenState with _$AuthenState {
  const factory AuthenState.init() = INIT;
  const factory AuthenState.loading() = LOADING;
  const factory AuthenState.failure(String msg) = FAILD;
  const factory AuthenState.loginSuccess(Token token) = LOGIN_SUCCESS;
}
