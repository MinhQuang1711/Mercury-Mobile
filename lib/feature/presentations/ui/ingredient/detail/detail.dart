import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/detail_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../widget/button/button.dart';
import '../widget/name_field.dart';
import '../widget/price_field.dart';
import '../widget/weight_field.dart';

class DetailIngredientScreen extends StatelessWidget {
  const DetailIngredientScreen({super.key, required this.ingredient});
  final Ingredient ingredient;
  @override
  Widget build(BuildContext context) {
    final factoryScreen = DetailScreen();
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: factoryScreen.createAppBar(context),
      body: AppStack(
        backgroundWidget: Column(
          children: [
            IngredientNameField(
              readOnly: true,
              initValue: ingredient.name,
            ),
            const SizedBox(height: 15),
            IngredientPriceField(
              readOnly: true,
              initValue: ingredient.cost.toString(),
            ),
            const SizedBox(height: 15),
            IngredientWeightField(
              initValue: ingredient.weight.toString(),
            ),
            const SizedBox(height: 100),
          ],
        ),
        bottomWidget: AppButton(
          label: "Huỷ",
          onTap: context.pop,
        ),
      ),
    );
  }
}
