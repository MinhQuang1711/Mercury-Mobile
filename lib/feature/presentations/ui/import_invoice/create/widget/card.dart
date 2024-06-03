import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({super.key, required this.comboBox, this.onTapRemove});
  final ComboBox comboBox;
  final Function(ComboBox)? onTapRemove;
  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => onTapRemove?.call(comboBox),
            child: const Icon(
              Icons.remove_circle_outline,
              color: AppColor.red,
            ),
          ),
          const SizedBox(width: 15),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(comboBox.name ?? "", style: bodyMedium),
                const SizedBox(height: 5),
                Text("Trọng lượng: ${comboBox.value?.formatNumber()} g",
                    style: captionRegular),
              ],
            ),
          ),
          Text(
            "${comboBox.price?.formatNumber()} VND",
            style: bodyMedium.copyWith(color: AppColor.blue),
          ),
        ],
      ),
    );
  }
}
