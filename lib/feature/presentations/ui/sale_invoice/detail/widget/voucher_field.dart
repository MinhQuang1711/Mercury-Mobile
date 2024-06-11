import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import '../../../../widget/column_input/column_input.dart';

class VoucherField extends StatelessWidget {
  const VoucherField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    return const ColumnInput(
      titleLabel: "Voucher",
      bottomWidget: AppTextField(
        readOnly: true,
        hintText: "Chọn voucher",
        sufWidget: Icon(Icons.arrow_drop_down_rounded),
      ),
    );
  }
}
