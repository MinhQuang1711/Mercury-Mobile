import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';

part 'event.freezed.dart';

@freezed
class PriceListEvent with _$PriceListEvent {
  const factory PriceListEvent.delete(String id) = _Delete;
  const factory PriceListEvent.create(PriceListRequest dto) = _Create;
  const factory PriceListEvent.update(PriceListRequest dto) = _Update;
}
