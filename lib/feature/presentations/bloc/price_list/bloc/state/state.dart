import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

@freezed
class PriceListState with _$PriceListState {
  const factory PriceListState.init() = _Init;
  const factory PriceListState.loading() = _Loading;
  const factory PriceListState.created(String msg) = _Created;
  const factory PriceListState.updated(String msg) = _Updated;
  const factory PriceListState.deleted(String msg) = _Deleted;
  const factory PriceListState.failure(String msg) = _Failure;
}
