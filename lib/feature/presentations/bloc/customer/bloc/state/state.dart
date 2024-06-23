import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class CustomerState with _$CustomerState {
  const factory CustomerState.init() = _Init;
  const factory CustomerState.loading() = _Loading;
  const factory CustomerState.failure(String msg) = _Failure;
  const factory CustomerState.success(String msg) = _Created;
}
