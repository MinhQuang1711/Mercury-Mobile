import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../core/utils/validator/validator.dart';
import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class ShippingField extends StatelessWidget {
  const ShippingField({super.key, this.init, this.readOnly, this.onChanged});
  final String? init;
  final bool? readOnly;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Phí vận chuyển",
      bottomWidget: AppTextField(
        initValue: init ?? "0",
        readOnly: readOnly,
        validator: Validator.doubleOrNull,
        hintText: "Nhập phí vận chuyển",
        onChanged: onChanged,
        sufWidget: const Icon(
          Icons.attach_money,
          color: AppColor.blue,
        ),
      ),
    );
  }
}
