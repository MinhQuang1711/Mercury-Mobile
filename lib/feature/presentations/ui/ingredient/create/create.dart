import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/ui/ingredient/create/widget/create_button.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/weight_field.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/factory_screen.dart';

import '../../../widget/stack/screen_allway_see_bottom.dart';
import '../widget/price_field.dart';

class CreateIngredientScreen extends StatelessWidget {
  const CreateIngredientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateIngredientPage();
  }
}

class CreateIngredientPage extends StatelessWidget {
  const CreateIngredientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final FactoryScreen factoryAppBar = CreateScreen();
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: factoryAppBar.createAppBar(context),
      body: AppStack(
        backgroundWidget: const Column(
          children: [
            IngredientNameField(),
            SizedBox(height: 15),
            IngredientPriceField(),
            SizedBox(height: 15),
            IngredientWeightField(),
            SizedBox(height: 100),
          ],
        ),
        bottomWidget: CreateIngredientButton(label: factoryAppBar.getTitle()),
      ),
    );
  }
}
