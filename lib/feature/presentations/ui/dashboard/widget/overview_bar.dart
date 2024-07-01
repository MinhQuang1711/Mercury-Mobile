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
              margin: const EdgeInsets.symmetric(horizontal: 30),
              height: 30,
              padding: const EdgeInsets.all(2),
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
                labelStyle: captionMedium.copyWith(color: AppColor.white),
                dividerColor: AppColor.grey3,
                unselectedLabelStyle: detailRegular,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
            const SizedBox(height: 20),
            const SizedBox(
              height: 115,
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
