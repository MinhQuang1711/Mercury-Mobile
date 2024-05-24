import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';

part 'state.freezed.dart';

@freezed
class GetSaleInvoiceState with _$GetSaleInvoiceState {
  const factory GetSaleInvoiceState({
    required List<SaleInvoice> list,
    required InvoiceQuery query,
  }) = _State;
}
