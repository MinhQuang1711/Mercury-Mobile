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
    var size = MediaQuery.of(context).size;
    final tabs = [
      const Tab(text: "Hôm nay"),
      const Tab(text: "Theo tháng"),
    ];
    return DefaultTabController(
      length: 2,
      child: Container(
        height: size.height / 1.5,
        padding: const EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          borderRadius: AppContainerBorder.radius6,
          color: AppColor.white,
          boxShadow: defaultBoxShadow,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("  Biểu đồ sản phẩm đã bán",
                style: captionBold.copyWith(color: AppColor.blue)),
            // const SizedBox(height: 30),
            SizedBox(
              // padding: const EdgeInsets.symmetric(vertical: 20),
              height: size.height / 2,
              child: const TabBarView(
                children: [
                  ChartOfDay(),
                  ChartOfMonth(),
                ],
              ),
            ),
            //  Text("  Biểu đồ sản phẩm đã bán",
            //     style: captionBold.copyWith(color: AppColor.grey4)),
            _tabBar(tabs),
          ],
        ),
      ),
    );
  }

  Container _tabBar(List<Tab> tabs) {
    return Container(
      height: 38,
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: AppColor.grey2,
        borderRadius: AppContainerBorder.radius6,
      ),
      child: TabBar(
        tabs: tabs,
        indicator: BoxDecoration(
          color: AppColor.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        labelStyle: captionMedium.copyWith(color: AppColor.white),
        unselectedLabelStyle: detailRegular,
        dividerColor: AppColor.grey2,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
  }
}
