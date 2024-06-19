import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class DiscountField extends StatelessWidget {
  const DiscountField({
    super.key,
    this.init,
    this.onChanged,
    this.readOnly,
    required this.discountType,
  });
  final String? init;
  final bool? readOnly;
  final DiscountType discountType;
  final Function(String?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      hintText: "Nhập giá trị",
      textInputType: TextInputType.number,
      validator: discountType == DiscountType.VALUE
          ? Validator.discountValue
          : Validator.discountPercent,
      sufWidget: Text("| ${discountType == DiscountType.VALUE ? "VND" : "%"}"),
    );
  }
}
