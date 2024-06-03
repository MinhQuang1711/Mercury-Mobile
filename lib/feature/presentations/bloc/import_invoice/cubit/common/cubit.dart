import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/state/state.dart';

class CommonImportInvoiceCubit extends Cubit<CommonImportInvoiceState> {
  CommonImportInvoiceCubit()
      : super(const CommonImportInvoiceState(SaleInvoiceRequest()));
  void addIngredient(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    emit(
      state.copyWith(
        request: state.request.copyWith(detailSaleInvoice: oldList..add(val)),
      ),
    );
  }

  void removeIngredient(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    emit(
      state.copyWith(
        request:
            state.request.copyWith(detailSaleInvoice: oldList..remove(val)),
      ),
    );
  }
}
