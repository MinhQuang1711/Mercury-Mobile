import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnInput(
      titleLabel: "Ghi chú",
      bottomWidget: AppTextField(
        maxLines: 4,
        hintText: "Nhập ghi chú hóa đơn",
      ),
    );
  }
}
