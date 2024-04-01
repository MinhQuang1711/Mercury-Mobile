import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';

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
    return GestureDetector(
      onTap: () => onTap?.call(ingredient),
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: AppPadding.padding12,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _infoWidget(),
            GestureDetector(
              child: const Icon(Icons.more_vert_sharp),
              onTap: () => onTapMoreButton?.call(ingredient),
            )
          ],
        ),
      ),
    );
  }

  Column _infoWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          ingredient.name,
          style: bodyBold,
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Text(
              "Tồn kho: ${ingredient.weight} gram",
              style: captionRegular.copyWith(color: Colors.black87),
            )
          ],
        )
      ],
    );
  }
}
