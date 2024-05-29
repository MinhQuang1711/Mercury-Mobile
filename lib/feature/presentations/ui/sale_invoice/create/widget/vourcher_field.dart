import 'package:flutter/material.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';

class VoucherField extends StatelessWidget {
  const VoucherField({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnInput(
      titleLabel: "Voucher",
      bottomWidget: AppSearchFiled<ComboBox>(
        items: [],
        hint: "Chọn voucher",
        appItemFields: AppItemField.comboBox,
      ),
    );
  }
}
