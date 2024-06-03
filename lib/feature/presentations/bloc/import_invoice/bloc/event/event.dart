import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/import_invoice_request/import_invoice_request.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';

part 'event.freezed.dart';

@freezed
class ImportInvoiceEvent with _$ImportInvoiceEvent {
  const factory ImportInvoiceEvent.get(InvoiceQuery query) = _Get;
  const factory ImportInvoiceEvent.create(ImportInvoiceRequest request) =
      _Create;
}
