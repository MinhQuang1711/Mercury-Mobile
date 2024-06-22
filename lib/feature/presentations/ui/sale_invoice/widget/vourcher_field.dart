import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:select_button_package/model/search_item.dart';

class VoucherField extends StatelessWidget {
  const VoucherField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonSaleInvoiceCubit>();
    void onChanged(SearchItem<Voucher> val) {
      cubit.changedVoucher(val.item);
    }

    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      builder: (_, state) => ColumnInput(
        titleLabel: "Voucher",
        bottomWidget: AppSelectButton<Voucher>(
          items: state.voucher,
          hintText: "Chọn mã giảm giá",
          // initValue: initValue,
          onTap: onChanged,
          searchHint: "Tìm mã giảm giá",
          appSearchItem: AppSearchItem.voucher,
          // onTapClearButton: () => cubit.changedVoucher(null),
        ),
      ),
    );
  }
}
