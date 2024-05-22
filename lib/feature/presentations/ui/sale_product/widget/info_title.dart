import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class ProductInfoTitle extends StatelessWidget {
  const ProductInfoTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Thông tin chung",
          style: bodyBold.copyWith(color: AppColor.blue),
        ),
        const Divider(),
      ],
    );
  }
}
