import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class VoucherState with _$VoucherState {
  const factory VoucherState.init() = _Init;
  const factory VoucherState.loading() = _Loading;
  const factory VoucherState.failure(String msg) = _Failure;
  const factory VoucherState.createSuccess(String msg) = _Create;
}
