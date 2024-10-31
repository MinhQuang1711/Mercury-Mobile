import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

import '../../../../../data/model/price_list/price_list.dart';

part 'state.freezed.dart';

@freezed
class PriceListState with _$PriceListState {
  const factory PriceListState.init() = _Init;
  const factory PriceListState.loading() = _Loading;
  const factory PriceListState.created(String msg) = _Created;
  const factory PriceListState.updated(String msg) = _Updated;
  const factory PriceListState.deleted(String msg) = _Deleted;
  const factory PriceListState.failure(String msg) = _Failure;
  const factory PriceListState.getSuccessful(
    SearchByName searchDto,
    PagedList<PriceList> paged,
  ) = _GetSuccessful;
}
