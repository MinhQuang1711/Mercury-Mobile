import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/product/product_query.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';

part 'event.freezed.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.delete(String id) = _Delete;
  const factory ProductEvent.get(ProdductQuery searchByName) = _Get;
  const factory ProductEvent.create(ProductRequest dto) = _Create;
  const factory ProductEvent.update(ProductRequest dto) = _Update;
}
