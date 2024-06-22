import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../widget/column_input/column_input.dart';
import '../../../widget/textfield/textfield.dart';

class CustomerBirthDayField extends StatelessWidget {
  const CustomerBirthDayField({super.key, this.onTap, this.initValue});
  final Function()? onTap;
  final String? initValue;
  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      isRequied: true,
      titleLabel: "Ngày sinh",
      bottomWidget: AppTextField(
        readOnly: true,
        onTap: onTap,
        hintText: "Chọn ngày sinh",
        sufWidget: const Icon(
          Icons.calendar_month_rounded,
          color: AppColor.blue,
        ),
      ),
    );
  }
}
