import 'package:flutter/material.dart';

import '../../../widget/button/button.dart';

class SettingProductButton extends StatelessWidget {
  const SettingProductButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AppButton(
      onTap: onTap,
      buttonType: ButtonType.OUTLINE,
      buttonSize: ButtonSize.SIZE_24,
      label: "Thiết lập thêm sản phẩm",
    );
  }
}
