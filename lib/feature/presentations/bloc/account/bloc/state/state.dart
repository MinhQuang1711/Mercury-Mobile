import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class AccountState with _$AccountState {
  const factory AccountState.init() = _init;
  const factory AccountState.loading() = _loading;
  const factory AccountState.success(String msg) = _success;
  const factory AccountState.failure(String msg) = _failure;
}
