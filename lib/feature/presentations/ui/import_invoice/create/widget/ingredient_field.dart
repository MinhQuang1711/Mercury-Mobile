import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class AddIngredientButton extends StatelessWidget {
  const AddIngredientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: AppButton(
        label: "Thêm mã nguyên liệu",
        textColor: AppColor.blueShade3,
        backgroundColor: AppColor.blue.withOpacity(0.2),
        sufWidget: const Icon(
          Icons.add,
          color: AppColor.blueShade3,
        ),
      ),
    );
  }
}
