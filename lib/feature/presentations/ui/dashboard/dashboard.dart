import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/create_invoice_row.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

import 'widget/chart.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DashboardPage();
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.blue,
        centerTitle: true,
        title: Text(
          "Mercury.Homebrew",
          style: h6ExtraBold.copyWith(color: AppColor.white),
        ),
      ),
      body: SingleChildScrollView(
        child: _body(context),
      ),
    );
  }

  Widget _body(BuildContext context) {
    return const Padding(
      padding: AppPadding.padding12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OverViewBar(),
          CreateInvoiceRow(),
          Chart(),
        ],
      ),
    );
  }
}
