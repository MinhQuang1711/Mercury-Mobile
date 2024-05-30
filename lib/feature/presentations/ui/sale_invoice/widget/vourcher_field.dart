import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';
import 'package:searchfield/searchfield.dart';

class VoucherField extends StatelessWidget {
  const VoucherField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonSaleInvoiceCubit>();
    void onChanged(SearchFieldListItem<Voucher> val) {
      cubit.changedVoucher(val.item!);
    }

    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      builder: (_, state) => ColumnInput(
        titleLabel: "Voucher",
        bottomWidget: AppSearchFiled<Voucher>(
          items: state.voucher,
          hint: "Chọn voucher",
          initValue: initValue,
          onTap: onChanged,
          appItemFields: AppItemField.voucher,
          onTapClearButton: () => cubit.changedVoucher(null),
        ),
      ),
    );
  }
}
