import 'package:flutter/material.dart';

import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class PhoneNumberNameField extends StatelessWidget {
  const PhoneNumberNameField(
      {super.key, this.onChanged, this.initValue, this.readOnly});
  final Function(String?)? onChanged;
  final String? initValue;
  final bool? readOnly;
  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Số điện thoại",
      bottomWidget: AppTextField(
        initValue: initValue,
        readOnly: readOnly,
        onChanged: onChanged,
        hintText: "Nhập số điện thoại khách hàng",
      ),
    );
  }
}
