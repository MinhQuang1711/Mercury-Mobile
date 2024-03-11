import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/login_dto/login_dto.dart';

import 'state/state.dart';

class AuthenCubit extends Cubit<AuthenCubitState> {
  AuthenCubit()
      : super(const AuthenCubitState(
            isHiden: true,
            isSavePassword: false,
            dto: LoginDto(userName: "", password: "")));

  void changedUserName(String? val) {
    if (val != null) {
      emit(state.copyWith(dto: state.dto.copyWith(userName: val)));
    }
  }

  void changedPassword(String? val) {
    if (val != null) {
      emit(state.copyWith(dto: state.dto.copyWith(password: val)));
    }
  }
}
