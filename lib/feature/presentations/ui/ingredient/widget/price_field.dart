import 'package:flutter/material.dart';

import '../../../../../core/utils/validator/validator.dart';
import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class IngredientPriceField extends StatelessWidget {
  const IngredientPriceField({
    super.key,
    this.initValue,
    this.onChanged,
    this.onTapClearButton,
    this.readOnly,
  });
  final bool? readOnly;
  final String? initValue;
  final Function(String?)? onChanged;
  final Function()? onTapClearButton;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Giá cost",
      bottomWidget: AppTextField(
        canDelete: true,
        readOnly: readOnly,
        initValue: initValue,
        onChanged: onChanged,
        hintText: "Giá nhập nguyên liệu",
        sufWidget: const Text("vnd/gram"),
        validator: Validator.doubleOrNull,
        textInputType: TextInputType.number,
      ),
    );
  }
}
