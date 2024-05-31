import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/app_bar.dart';

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
    );
  }
}
