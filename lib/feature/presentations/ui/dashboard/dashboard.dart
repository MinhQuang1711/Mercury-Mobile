import 'package:flutter/material.dart';
import 'package:mercury/config/const/box_shadow.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar.dart';

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
          _gradientBackground(),
          _chartBar(context),
          _overviewBar(),
        ],
      ),
    );
  }

  Positioned _overviewBar() {
    return Positioned(
      top: 20,
      right: 0,
      left: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: AppPadding.padding12,
            child: Text(
              "Mercury.Homebrew",
              style: h6Medium.copyWith(color: AppColor.white),
            ),
          ),
          const OverViewBar(),
        ],
      ),
    );
  }

  Positioned _chartBar(BuildContext context) {
    return Positioned.fill(
      top: 180,
      child: Container(
        padding: AppPadding.padding12,
        height: MediaQuery.of(context).size.height,
        color: AppColor.white,
        child: Column(
          children: [
            const SizedBox(height: 150),
            SingleChildScrollView(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.white,
                  borderRadius: AppContainerBorder.radius6,
                  boxShadow: defaultBoxShadow,
                ),
                child: const Chart(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _gradientBackground() {
    return Container(
      // margin: AppPadding.padding12,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [AppColor.blue, AppColor.blueShade2],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
    );
  }
}
