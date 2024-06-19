import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';
import 'package:mercury/feature/presentations/bloc/voucher/cubit/state/state.dart';

import '../../../../domain/model/voucher/voucher.dart';

class CommonVoucherCubit extends Cubit<CommonVoucherState> {
  CommonVoucherCubit()
      : super(const CommonVoucherState(
            Voucher(discountType: DiscountType.VALUE)));

  void changedName(String? val) {
    emit(state.copyWith(voucher: state.voucher.copyWith(name: val)));
  }

  void changedDiscountType(DiscountType? val) {
    emit(state.copyWith(voucher: state.voucher.copyWith(discountType: val)));
  }

  void changedDiscountValue(String? val) {
    var discountValue = double.tryParse(val ?? "0");
    emit(state.copyWith(
        voucher: state.voucher.copyWith(discountValue: discountValue)));
  }

  void changedDiscountPercent(String? val) {
    var discountPercent = double.tryParse(val ?? "0");
    emit(state.copyWith(
        voucher: state.voucher.copyWith(percentValue: discountPercent)));
  }
}
