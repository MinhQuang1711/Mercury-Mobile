import 'package:flutter/material.dart';
import 'package:mercury/config/const/box_shadow.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar_by_day.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/overview_bar_by_month.dart';

import '../../../../../config/const/padding.dart';
import '../../../../../config/const/radius.dart';

class OverViewBar extends StatelessWidget {
  const OverViewBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: "Hôm nay"),
      const Tab(text: "Theo tháng"),
    ];
    return DefaultTabController(
      length: 2,
      child: Container(
        padding: AppPadding.padding12,
        // margin: AppPadding.padding12,
        decoration: BoxDecoration(
          color: AppColor.white,
          boxShadow: defaultBoxShadow,
          borderRadius: AppContainerBorder.radius6,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 38,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: AppColor.grey3,
                borderRadius: AppContainerBorder.radius6,
              ),
              child: TabBar(
                tabs: tabs,
                indicator: BoxDecoration(
                  color: AppColor.blue,
                  borderRadius: AppContainerBorder.radius6,
                ),
                labelStyle: bodyMedium.copyWith(color: AppColor.white),
                dividerColor: AppColor.grey3,
                unselectedLabelStyle: captionRegular,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            const SizedBox(height: 25),
            const SizedBox(
              height: 135,
              child: TabBarView(children: [
                OverviewBarByDay(),
                OverviewBarByMonth(),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
