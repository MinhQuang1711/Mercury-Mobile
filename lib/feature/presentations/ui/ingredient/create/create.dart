import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/app_bar/factory_app_bar/app_bar.dart/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/app_bar/factory_app_bar/factory_app_bar.dart';

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
    final FactoryAppBar factoryAppBar = CreateAppBar();
    return Scaffold(
      backgroundColor: AppColor.white,
      appBar: factoryAppBar.create(context),
    );
  }
}
