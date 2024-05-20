import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';

import '../../../widget/button/button.dart';
import '../widget/name_field.dart';
import '../widget/price_field.dart';
import '../widget/weight_field.dart';

class DetailIngredientScreen extends StatelessWidget {
  const DetailIngredientScreen({super.key, required this.ingredient});
  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IngredientNameField(
            readOnly: true,
            initValue: ingredient.name,
          ),
          const SizedBox(height: 15),
          IngredientPriceField(
            readOnly: true,
            initValue: ingredient.cost.formatNumber(),
          ),
          const SizedBox(height: 15),
          IngredientWeightField(
            initValue: ingredient.weight.formatNumber(),
          ),
          const SizedBox(height: 100),
          AppButton(
            label: "Huỷ",
            onTap: context.pop,
            buttonSize: ButtonSize.SIZE_24,
          ),
        ],
      ),
    );
  }
}
