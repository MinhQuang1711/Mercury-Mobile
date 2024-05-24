import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';

part 'state.freezed.dart';

@freezed
class SaleInvoiceState with _$SaleInvoiceState {
  const factory SaleInvoiceState.init() = _Init;
  const factory SaleInvoiceState.loading() = _Loading;
  const factory SaleInvoiceState.created(String msg) = _Created;
  const factory SaleInvoiceState.deleted(String msg) = _Deleted;
  const factory SaleInvoiceState.failure(String msg) = _Failure;
  const factory SaleInvoiceState.got({
    required InvoiceQuery searchByName,
    required PagedList<SaleInvoice> pagedList,
  }) = _Got;
}
