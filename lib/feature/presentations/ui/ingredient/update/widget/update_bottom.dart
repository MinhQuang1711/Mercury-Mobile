import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class UpdateIngredientButton extends StatelessWidget {
  const UpdateIngredientButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: AppButton(label: "Xác nhận"),
    );
  }
}
