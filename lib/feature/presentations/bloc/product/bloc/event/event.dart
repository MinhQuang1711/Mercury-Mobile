import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

part 'event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.get(SearchByName searchByName) = _Get;
}
