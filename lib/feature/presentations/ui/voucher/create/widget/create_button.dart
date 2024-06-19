import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateVoucherButton extends StatelessWidget {
  const CreateVoucherButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onSubmit() {
      if (formKey.currentState?.validate() == true) {
        // TODO: logic create
      }
    }

    return AppButton(
      label: "Xác nhận",
      onTap: onSubmit,
      buttonSize: ButtonSize.SIZE_24,
    );
  }
}
