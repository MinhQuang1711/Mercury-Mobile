import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';

import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class VoucherNameField extends StatelessWidget {
  const VoucherNameField({
    super.key,
    this.init,
    this.readOnly,
    this.onChanged,
  });

  final String? init;
  final bool? readOnly;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Tên phếu giảm",
      bottomWidget: AppTextField(
        initValue: init,
        readOnly: readOnly,
        onChanged: onChanged,
        hintText: "Nhập tên phiếu giảm",
        validator: Validator.required,
      ),
    );
  }
}
