import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class IngredientCard extends StatelessWidget {
  const IngredientCard({
    super.key,
    this.onTap,
    this.onTapMoreButton,
    required this.ingredient,
  });
  final Ingredient ingredient;
  final Function(Ingredient)? onTap;
  final Function(Ingredient)? onTapMoreButton;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      onTap: () => onTap?.call(ingredient),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: _infoWidget()),
          GestureDetector(
            child: const Icon(Icons.more_vert_sharp),
            onTap: () => onTapMoreButton?.call(ingredient),
          )
        ],
      ),
    );
  }

  Column _infoWidget() {
    double valueOfIngredient = (ingredient.weight * ingredient.cost);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.name,
          style: bodyBold.copyWith(color: AppColor.blueShade2),
        ),
        const SizedBox(height: 8),
        Text(
          "Tồn: ${ingredient.weight.formatNumber()} g",
          style: captionRegular.copyWith(color: AppColor.grey5),
        ),
        const SizedBox(height: 4),
        Text(
          "Giá trị: ${valueOfIngredient.formatNumber()} vnd",
          style: captionRegular.copyWith(color: AppColor.grey5),
        ),
      ],
    );
  }
}
