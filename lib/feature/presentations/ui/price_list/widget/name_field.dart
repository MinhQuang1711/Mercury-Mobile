import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';

import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class NameField extends StatelessWidget {
  const NameField({
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
      isRequied: true,
      titleLabel: "Tên bảng giá",
      bottomWidget: AppTextField(
        initValue: init,
        readOnly: readOnly,
        onChanged: onChanged,
        validator: Validator.required,
        hintText: "Nhập tên bảng giá",
      ),
    );
  }
}
