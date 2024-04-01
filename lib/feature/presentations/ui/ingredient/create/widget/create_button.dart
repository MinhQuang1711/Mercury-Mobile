import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateIngredientButton extends StatelessWidget {
  const CreateIngredientButton(
      {super.key, required this.label, required this.formKey});
  final String label;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        // TODO implements logic create
      }
    }

    return AppButton(
      label: label,
      onTap: onTap,
    );
  }
}
