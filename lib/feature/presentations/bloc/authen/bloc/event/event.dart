import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/login_dto/login_dto.dart';

part 'event.freezed.dart';

@freezed
class AuthenEvent with _$AuthenEvent {
  const factory AuthenEvent.login({required LoginDto dto}) = LOGIN;
}
