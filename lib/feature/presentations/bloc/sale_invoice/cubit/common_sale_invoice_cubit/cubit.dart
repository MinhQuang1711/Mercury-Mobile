// ignore_for_file: unused_result

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';

class CommonSaleInvoiceCubit extends Cubit<CommonSaleInvoiceState> {
  CommonSaleInvoiceCubit()
      : super(const CommonSaleInvoiceState(
            SaleInvoiceRequest(detailSaleInvoice: [])));

  void selectDelailSaleInvoice(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    emit(
      state.copyWith(
        request: state.request.copyWith(
          detailSaleInvoice: oldList..add(val.copyWith(quantity: 1)),
        ),
      ),
    );
  }

  void addMoreDetailSaleInvoice(ComboBox val) {
    final index = state.request.detailSaleInvoice!.indexOf(val);
    final oldPDetail = state.request.detailSaleInvoice![index];
    final newDetail =
        oldPDetail.copyWith(quantity: (oldPDetail.quantity ?? 1) + 1);
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    oldList[index] = newDetail;
    emit(
      state.copyWith(
        request: state.request.copyWith(detailSaleInvoice: oldList),
      ),
    );
  }

  void removeDetailSaleInvoice(ComboBox val) {
    final index = state.request.detailSaleInvoice!.indexOf(val);
    final oldPDetail = state.request.detailSaleInvoice![index];
    final newDetail =
        oldPDetail.copyWith(quantity: (oldPDetail.quantity ?? 1) - 1);
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    if (newDetail.quantity == 0) {
      oldList.remove(val);
    } else {
      oldList[index] = newDetail;
    }

    emit(
      state.copyWith(
        request: state.request.copyWith(detailSaleInvoice: oldList),
      ),
    );
  }
}
