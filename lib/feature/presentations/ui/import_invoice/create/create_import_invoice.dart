import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/create/widget/ingredient_field.dart';
import 'package:mercury/feature/presentations/widget/app_bar.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import 'widget/description_field.dart';
import 'widget/ingredient_selected.dart';

class CreateImportInvoiceScreen extends StatelessWidget {
  const CreateImportInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateImportInvoicePage();
  }
}

class CreateImportInvoicePage extends StatelessWidget {
  const CreateImportInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ActionAppBar(),
      body: AppStack(
        bottomWidget: AppButton(label: "Xác nhận"),
        backgroundWidget: Column(
          children: [
            AddIngredientButton(),
            SizedBox(height: 10),
            IngredientSelected(),
            SizedBox(height: 20),
            DescriptionField(),
          ],
        ),
      ),
    );
  }
}
