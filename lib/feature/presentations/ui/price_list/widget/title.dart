import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class SettingProductTitle extends StatelessWidget {
  const SettingProductTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Text(
        "Thiết lập giá sản phẩm",
        style: captionBold.copyWith(color: AppColor.grey5),
      ),
    );
  }
}
