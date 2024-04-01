import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class AppTabBar {
  final List<Tab> tabs;
  late final Widget tabBar;
  final List<Widget> children;
  late final TabBarView tabBarView;
  AppTabBar({required this.tabs, required this.children}) {
    tabBar = TabBar(
      tabs: tabs,
      labelStyle: captionMedium,
      padding: EdgeInsets.zero,
      labelColor: AppColor.blue,
      labelPadding: EdgeInsets.zero,
      dividerColor: AppColor.grey3,
      indicatorSize: TabBarIndicatorSize.tab,
      // indicator: BoxDecoration(
      //   color: AppColor.blue,
      //   borderRadius: BorderRadius.circular(8),
      // ),
    );
    tabBarView = TabBarView(children: children);
  }
}
