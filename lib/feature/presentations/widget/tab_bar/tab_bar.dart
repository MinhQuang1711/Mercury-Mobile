import 'package:flutter/material.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class AppTabBar {
  final List<Tab> tabs;
  late final Widget tabBar;
  final List<Widget> children;
  late final TabBarView tabBarView;
  final TabController? tabController;
  AppTabBar({required this.tabs, required this.children, this.tabController}) {
    tabBar = Container(
      height: 38,
      decoration: BoxDecoration(
        borderRadius: AppContainerBorder.radius8,
        color: AppColor.blueTint.withOpacity(0.2),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: TabBar(
        tabs: tabs,
        controller: tabController,
        labelStyle: captionMedium,
        padding: EdgeInsets.zero,
        labelColor: AppColor.blue,
        labelPadding: EdgeInsets.zero,
        dividerColor: AppColor.blue,
        unselectedLabelStyle: detailRegular,
        unselectedLabelColor: Colors.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
    tabBarView = TabBarView(
      controller: tabController,
      children: children,
    );
  }
}
