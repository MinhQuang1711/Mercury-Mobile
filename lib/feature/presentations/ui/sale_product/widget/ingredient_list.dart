import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class TitleListIngredientOfProduct extends StatelessWidget {
  const TitleListIngredientOfProduct({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _title(),
            if (onTap != null) _addButton(),
          ],
        ),
        const Divider(),
      ],
    );
  }

  GestureDetector _addButton() {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        Icons.add_box_rounded,
        color: AppColor.yellow,
        size: 30,
      ),
    );
  }

  Expanded _title() {
    return Expanded(
      child: Text(
        "Danh sách nguyên liệu",
        style: bodyBold.copyWith(color: AppColor.blue),
      ),
    );
  }
}
