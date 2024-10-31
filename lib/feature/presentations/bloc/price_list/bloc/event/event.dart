import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'event.freezed.dart';

@freezed
class PriceListEvent with _$PriceListEvent {
  const factory PriceListEvent.delete(String id) = _Delete;
  const factory PriceListEvent.get(SearchByName dto) = _Get;
  const factory PriceListEvent.create(PriceListRequest dto) = _Create;
  const factory PriceListEvent.update(PriceListRequest dto) = _Update;
}
