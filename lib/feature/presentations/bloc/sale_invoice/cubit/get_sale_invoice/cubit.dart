import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/state/state.dart';

import '../../../../../data/model/paged_list/paged_list.dart';

class GetSaleInvoiceCubit extends Cubit<GetSaleInvoiceState> {
  GetSaleInvoiceCubit()
      : super(const GetSaleInvoiceState(list: [], query: InvoiceQuery()));
  void handleList({
    required InvoiceQuery query,
    required PagedList<SaleInvoice> pagedList,
  }) {
    final oldList = List<SaleInvoice>.from(state.list);
    if (query.pageNumber == 1) {
      oldList.clear();
    }
    emit(
      state.copyWith(
        list: oldList..addAll(pagedList.items),
        query: query,
      ),
    );
  }
}
