import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/price_field.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateProductPage();
  }
}

class CreateProductPage extends StatelessWidget {
  const CreateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const AppStack(
        backgroundWidget: Column(
          children: [
            ProductNameField(),
            SizedBox(height: 15),
            ProductPriceField(),
          ],
        ),
        bottomWidget: SizedBox(),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        CreateScreen().getTitle(),
        style: h6Bold,
      ),
    );
  }
}
