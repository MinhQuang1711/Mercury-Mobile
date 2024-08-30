import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import 'widget/select_date_range_button.dart';

class SaleReportScreen extends StatelessWidget {
  const SaleReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SaleReportPage();
  }
}

class SaleReportPage extends StatelessWidget {
  const SaleReportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CreateAppBar(
        context,
        titleAppbar: "Báo cáo hoạt động kinh doanh",
      ),
      body: const Padding(
        padding: AppPadding.padding16,
        child: Column(
          children: [
            SelectDateRangeButton(),
            SizedBox(height: 20),
            AppButton(
              label: "Xác nhận",
              buttonSize: ButtonSize.SIZE_24,
              backgroundColor: AppColor.blue,
            )
          ],
        ),
      ),
    );
  }
}
