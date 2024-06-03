import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/import_invoice_request/import_invoice_request.dart';

part 'state.freezed.dart';

@freezed
class CommonImportInvoiceState with _$CommonImportInvoiceState {
  const factory CommonImportInvoiceState(ImportInvoiceRequest request) = _State;
}
