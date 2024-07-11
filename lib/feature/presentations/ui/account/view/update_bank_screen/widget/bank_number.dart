import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class BankNumber extends StatelessWidget {
  const BankNumber({super.key, this.onCompleted});
  final Function(String?)? onCompleted;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Số tài khoản",
      bottomWidget: AppTextField(
        onCompleted: onCompleted,
        unfocusWhenTapOutside: false,
        hintText: "Nhập số tài khoản thụ hưởng",
        sufWidget: Container(
          padding: const EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(4),
          ),
          child: const Icon(
            Icons.person,
            color: AppColor.blue,
          ),
        ),
      ),
    );
  }
}
