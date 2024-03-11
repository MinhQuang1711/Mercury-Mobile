// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_dto.freezed.dart';
part 'login_dto.g.dart';

@Freezed(fromJson: false, toJson: true)
class LoginDto with _$LoginDto {
  const factory LoginDto({
    required String userName,
    required String password,
  }) = _LOGINDTO;
}
