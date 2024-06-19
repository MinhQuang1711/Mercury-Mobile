import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateVoucherButton extends StatelessWidget {
  const CreateVoucherButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppButton(
      label: "Xác nhận",
      buttonSize: ButtonSize.SIZE_24,
    );
  }
}
