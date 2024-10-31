import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'state.freezed.dart';

@freezed
class GetPriceListState with _$GetPriceListState {
  const factory GetPriceListState({
    required SearchByName dto,
    required List<PriceList> list,
  }) = _State;
}
