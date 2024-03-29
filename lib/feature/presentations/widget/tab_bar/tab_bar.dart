import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

class AppTabBar {
  final List<Tab> tabs;
  late final Widget tabBar;
  final List<Widget> children;
  late final TabBarView tabBarView;
  AppTabBar({required this.tabs, required this.children}) {
    tabBar = Container(
      decoration: BoxDecoration(
        color: AppColor.blue.withOpacity(0.1),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TabBar(
        tabs: tabs,
        padding: EdgeInsets.zero,
        labelColor: AppColor.white,
        dividerColor: AppColor.white,
        indicatorSize: TabBarIndicatorSize.tab,
        indicator: BoxDecoration(
          color: AppColor.blue,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
    tabBarView = TabBarView(children: children);
  }
}
