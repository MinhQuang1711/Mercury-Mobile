import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';

import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class CustomerNameField extends StatelessWidget {
  const CustomerNameField(
      {super.key, this.onChanged, this.initValue, this.readOnly});
  final Function(String?)? onChanged;
  final String? initValue;
  final bool? readOnly;
  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Tên khách hàng",
      bottomWidget: AppTextField(
        readOnly: readOnly,
        onChanged: onChanged,
        initValue: initValue,
        validator: Validator.required,
        hintText: "Nhập tên khách hàng",
      ),
    );
  }
}
