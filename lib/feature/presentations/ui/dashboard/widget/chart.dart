import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart_of_day.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart_of_month.dart';

import '../../../../../config/const/box_shadow.dart';
import '../../../../../config/const/radius.dart';
import '../../../../../config/theme/text_style.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: "Hôm nay"),
      const Tab(text: "Theo tháng"),
    ];
    return DefaultTabController(
      length: 2,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: AppContainerBorder.radius6,
          color: AppColor.white,
          boxShadow: defaultBoxShadow,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("  Biểu đồ sản phẩm đã bán",
                style: captionBold.copyWith(color: AppColor.grey4)),
            const SizedBox(
              // padding: const EdgeInsets.symmetric(vertical: 20),
              height: 300,
              child: TabBarView(
                children: [
                  ChartOfDay(),
                  ChartOfMonth(),
                ],
              ),
            ),
            TabBar(
              tabs: tabs,
              labelStyle: bodyMedium,
              unselectedLabelStyle: captionRegular,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
          ],
        ),
      ),
    );
  }
}
