// ignore_for_file: unused_result

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';

class CommonSaleInvoiceCubit extends Cubit<CommonSaleInvoiceState> {
  CommonSaleInvoiceCubit()
      : super(
          const CommonSaleInvoiceState(
            SaleInvoiceRequest(
              detailSaleInvoice: [],
            ),
            totalDiscount: 0,
            totalPrice: 0,
          ),
        );

  double _calulateTotalPrice(List<ComboBox> list) {
    return list.fold(0, (p, e) => p + (e.quantity ?? 1) * (e.price ?? 0));
  }

  void selectCustomer(String? val) {
    emit(state.copyWith(request: state.request.copyWith(customerId: val)));
  }

  void selectDelailSaleInvoice(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.detailSaleInvoice ?? []);
    final newList = oldList..add(val.copyWith(quantity: 1));
    emit(
      state.copyWith(
        totalPrice: _calulateTotalPrice(newList),
        request: state.request.copyWith(
          detailSaleInvoice: newList,
        ),
        totalDiscount: _caculateVoucherValue(
            state.request.voucher, _calulateTotalPrice(newList)),
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
        totalPrice: _calulateTotalPrice(oldList),
        request: state.request.copyWith(detailSaleInvoice: oldList),
        totalDiscount: _caculateVoucherValue(
            state.request.voucher, _calulateTotalPrice(oldList)),
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
        totalPrice: _calulateTotalPrice(oldList),
        request: state.request.copyWith(detailSaleInvoice: oldList),
        totalDiscount: _caculateVoucherValue(
            state.request.voucher, _calulateTotalPrice(oldList)),
      ),
    );
  }

  double _caculateVoucherValue(Voucher? voucher, double total) {
    return (voucher?.discountValue ?? 0) +
        ((voucher?.percentValue ?? 0) / 100) * total;
  }

  void changedVoucher(Voucher? val) {
    emit(state.copyWith(
      totalDiscount: _caculateVoucherValue(val, state.totalPrice),
      request: state.request.copyWith(voucher: val),
    ));
  }
}
