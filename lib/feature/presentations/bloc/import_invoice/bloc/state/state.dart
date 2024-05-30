import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';

import '../../../../../data/model/import_invoice/import_invoice.dart';

part 'state.freezed.dart';

@freezed
class ImportInvoiceState with _$ImportInvoiceState {
  const factory ImportInvoiceState.init() = _Init;
  const factory ImportInvoiceState.loading() = _Loading;
  const factory ImportInvoiceState.success(String msg) = _Success;
  const factory ImportInvoiceState.failure(String msg) = _Failure;
  const factory ImportInvoiceState.getSuccess({
    required InvoiceQuery query,
    required PagedList<ImportInvoice> pagedList,
  }) = _Got;
}
