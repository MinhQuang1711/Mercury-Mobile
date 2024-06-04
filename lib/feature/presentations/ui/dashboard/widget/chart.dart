import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart_of_day.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/chart_of_month.dart';

import '../../../../../config/theme/text_style.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: "Hôm nay"),
      const Tab(text: "Theo tháng"),
    ];
    return Padding(
      padding: AppPadding.padding12,
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const SizedBox(
              height: 250,
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
