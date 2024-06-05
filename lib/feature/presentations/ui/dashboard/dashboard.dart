import 'package:flutter/material.dart';
import 'package:mercury/config/const/box_shadow.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/create_invoice_row.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

import 'widget/gradient_background.dart';
import 'widget/white_background.dart';

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
      body: Stack(
        children: [
          const GradientBackGround(),
          const WhiteBackground(),
          _body(context),
        ],
      ),
    );
  }

  Positioned _body(BuildContext context) {
    return Positioned(
      top: 20,
      right: 0,
      left: 0,
      child: Padding(
        padding: AppPadding.padding12,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Mercury.Homebrew",
              style: h5Bold.copyWith(color: AppColor.white),
            ),
            const SizedBox(height: 20),
            const OverViewBar(),
            const CreateInvoiceRow(),
            Container(
              decoration: BoxDecoration(
                color: AppColor.white,
                borderRadius: AppContainerBorder.radius6,
                boxShadow: defaultBoxShadow,
              ),
              child: const Chart(),
            ),
          ],
        ),
      ),
    );
  }
}
