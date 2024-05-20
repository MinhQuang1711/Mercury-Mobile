import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class IngredientNote extends StatelessWidget {
  const IngredientNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Lưu ý: giá trị cost và trọng lượng là giá trị ban dầu tương ứng. Nếu không điền các giá trị mặc định bằng 0.",
      style: captionMedium.copyWith(color: AppColor.grey5),
    );
  }
}
