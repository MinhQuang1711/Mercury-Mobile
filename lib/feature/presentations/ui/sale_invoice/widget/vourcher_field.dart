import 'package:flutter/material.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';

class VoucherField extends StatelessWidget {
  const VoucherField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Voucher",
      bottomWidget: AppSearchFiled<ComboBox>(
        items: const [],
        hint: "Chọn voucher",
        initValue: initValue,
        appItemFields: AppItemField.comboBox,
      ),
    );
  }
}
