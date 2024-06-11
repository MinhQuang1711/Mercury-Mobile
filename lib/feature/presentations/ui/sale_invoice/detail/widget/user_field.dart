import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import '../../../../widget/column_input/column_input.dart';

class UserField extends StatelessWidget {
  const UserField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    return const ColumnInput(
      titleLabel: "Tích điểm",
      bottomWidget: AppTextField(
        readOnly: true,
        hintText: "Chọn người dùng",
        sufWidget: Icon(Icons.arrow_drop_down_rounded),
      ),
    );
  }
}
