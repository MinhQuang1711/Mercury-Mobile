import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class ProductNameField extends StatelessWidget {
  const ProductNameField({
    super.key,
    this.readOnly,
    this.initValue,
    this.onChanged,
  });
  final bool? readOnly;
  final String? initValue;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: _nameField(),
    );
  }

  ColumnInput _nameField() {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Tên sản phẩm",
      bottomWidget: AppTextField(
        readOnly: readOnly,
        onChanged: onChanged,
        initValue: initValue,
        hintText: "Nhập tên sản phẩm",
        validator: Validator.required,
      ),
    );
  }
}
