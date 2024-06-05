import 'package:flutter/material.dart';
import 'package:mercury/config/const/box_shadow.dart';
import 'package:mercury/config/const/gradient.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';
import 'package:mercury/gen/assets.gen.dart';

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
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: _createInvoiceButton(
                    color: AppColor.darkRed,
                    title: "Thêm hóa đơn bán",
                    assetGenImage: Assets.icon.invoices,
                    gradient: AppGradient.getRedGradient(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: _createInvoiceButton(
                    title: "Hóa đơn nhập",
                    color: AppColor.blueShade2,
                    assetGenImage: Assets.icon.import,
                    gradient: AppGradient.getGreenGradient(),
                  ),
                )
              ],
            ),
            const SizedBox(height: 20),
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

  Container _createInvoiceButton({
    required String title,
    required Gradient gradient,
    required AssetGenImage assetGenImage,
    Color? color,
  }) {
    return Container(
      padding: AppPadding.padding14,
      decoration: BoxDecoration(
        gradient: gradient,
        boxShadow: defaultBoxShadow,
        border: Border.all(color: color ?? AppColor.white, width: 0.8),
        borderRadius: AppContainerBorder.radius6,
      ),
      child: Column(
        children: [
          Text(
            title,
            style: bodyMedium.copyWith(color: color ?? AppColor.white),
          ),
          const SizedBox(height: 7),
          Image.asset(
            assetGenImage.keyName,
            height: 25,
            width: 25,
            color: color ?? AppColor.white,
          ),
        ],
      ),
    );
  }
}
