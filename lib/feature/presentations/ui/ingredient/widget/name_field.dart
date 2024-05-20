import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';

import '../../../widget/textfield/textfield.dart';

class IngredientNameField extends StatelessWidget {
  const IngredientNameField({
    super.key,
    this.readOnly,
    this.initValue,
    this.onChanged,
    this.onTapClearButton,
  });
  final bool? readOnly;
  final String? initValue;
  final Function(String?)? onChanged;
  final Function()? onTapClearButton;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Tên nguyên liệu",
      bottomWidget: AppTextField(
        readOnly: readOnly,
        onChanged: onChanged,
        initValue: initValue,
        validator: Validator.required,
        hintText: "Nhập tên nguyên liệu",
      ),
    );
  }
}
