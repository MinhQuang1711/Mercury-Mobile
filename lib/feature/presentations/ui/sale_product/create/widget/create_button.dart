import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateProductButton extends StatelessWidget {
  const CreateProductButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        //TODO
      }
    }

    final button = AppButton(
      onTap: onTap,
      label: "Xác nhận",
    );

    return button;
  }
}
