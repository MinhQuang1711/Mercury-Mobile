import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/state/state.dart';

import '../../../../../data/model/import_invoice/import_invoice.dart';

class GetImportInvoiceCubit extends Cubit<GetImportInvoiceState> {
  GetImportInvoiceCubit()
      : super(const GetImportInvoiceState(query: InvoiceQuery(), list: []));

  void handleList({
    required InvoiceQuery query,
    required List<ImportInvoice> list,
  }) {
    final oldList = List<ImportInvoice>.from(state.list);
    if (query.pageNumber == 1) {
      oldList.clear();
    }
    emit(state.copyWith(
      query: query,
      list: oldList..addAll(list),
    ));
  }
}
