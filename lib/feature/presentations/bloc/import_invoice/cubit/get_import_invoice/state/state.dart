import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';

import '../../../../../../data/model/import_invoice/import_invoice.dart';

part 'state.freezed.dart';

@freezed
class GetImportInvoiceState with _$GetImportInvoiceState {
  const factory GetImportInvoiceState({
    required InvoiceQuery query,
    required List<ImportInvoice> list,
  }) = _State;
}
