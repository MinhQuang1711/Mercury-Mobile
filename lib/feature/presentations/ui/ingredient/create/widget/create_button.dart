import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateIngredientButton extends StatelessWidget {
  const CreateIngredientButton({super.key, required this.label});
  final String label;

  @override
  Widget build(BuildContext context) {
    return AppButton(label: label);
  }
}
