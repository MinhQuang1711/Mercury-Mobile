import 'package:flutter/material.dart';

import '../../../../../core/utils/validator/validator.dart';
import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class ProductPriceField extends StatelessWidget {
  const ProductPriceField({
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
      child: _priceField(),
    );
  }

  ColumnInput _priceField() {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Giá sản phẩm",
      bottomWidget: AppTextField(
        readOnly: readOnly,
        onChanged: onChanged,
        initValue: initValue,
        hintText: "Nhập giá sản phẩm",
        validator: Validator.doubleNotNull,
        textInputType: TextInputType.number,
      ),
    );
  }
}
