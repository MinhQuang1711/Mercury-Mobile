import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';

part 'event.freezed.dart';

@freezed
class SaleInvoiceEvent with _$SaleInvoiceEvent {
  const factory SaleInvoiceEvent.delete(String id) = _Delete;
  const factory SaleInvoiceEvent.get(InvoiceQuery query) = _Get;
  const factory SaleInvoiceEvent.create(SaleInvoiceRequest request) = _Create;
}
