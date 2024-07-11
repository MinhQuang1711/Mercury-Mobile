import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

import '../../../../../widget/button/button.dart';

class NextPageButton extends StatelessWidget {
  const NextPageButton({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      controller.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }

    var button = AppButton(
      label: "Tiếp tục",
      onTap: onTap,
      sufWidget: const Icon(
        Icons.arrow_forward,
        color: AppColor.white,
      ),
    );
    return button;
  }
}
