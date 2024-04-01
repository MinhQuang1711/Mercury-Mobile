import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';

import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class IngredientWeightField extends StatelessWidget {
  const IngredientWeightField({
    super.key,
    this.initValue,
    this.onChanged,
    this.onTapClearButton,
  });
  final String? initValue;
  final Function(String?)? onChanged;
  final Function()? onTapClearButton;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Trọng lượng",
      bottomWidget: AppTextField(
        initValue: "0",
        readOnly: true,
        onChanged: onChanged,
        hintText: "nhập trọng lượng",
        sufWidget: const Text("gram"),
        validator: Validator.doubleOrNull,
      ),
    );
  }
}
