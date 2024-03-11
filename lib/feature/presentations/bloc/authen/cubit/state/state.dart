import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/login_dto/login_dto.dart';

part 'state.freezed.dart';

@freezed
class AuthenCubitState with _$AuthenCubitState {
  const factory AuthenCubitState({
    required bool isHiden,
    required LoginDto dto,
    required bool isSavePassword,
  }) = INIT;
}
