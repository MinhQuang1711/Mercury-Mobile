import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';

part 'state.freezed.dart';

@freezed
class CommonImportInvoiceState with _$CommonImportInvoiceState {
  const factory CommonImportInvoiceState(SaleInvoiceRequest request) = _State;
}
