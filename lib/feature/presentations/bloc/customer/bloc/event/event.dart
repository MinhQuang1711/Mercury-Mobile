import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/customer/customer_request.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'event.freezed.dart';

@freezed
class CustomerEvent with _$CustomerEvent {
  const factory CustomerEvent.get(SearchByName searchByName) = _Get;
  const factory CustomerEvent.create(CustomerRequest request) = _Create;
}
