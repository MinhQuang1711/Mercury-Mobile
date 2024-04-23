import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/singleton/splash_singleton.dart';

class SplashBottomBar extends StatelessWidget {
  const SplashBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    List<Tab> tabs = [
      _tab(iconData: Icons.coffee, label: "Sản phẩm"),
      _tab(iconData: Icons.account_circle_rounded, label: "Tài khoản"),
    ];
    return Container(
      decoration: const BoxDecoration(
        color: AppColor.white,
        boxShadow: [
          BoxShadow(
            color: AppColor.grey3,
            spreadRadius: 7,
            blurRadius: 7,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: TabBar(
        tabs: tabs,
        padding: EdgeInsets.zero,
        indicatorColor: Colors.white,
        controller: SplashSingleton.instance.splashTabController,
      ),
    );
  }

  Tab _tab({required IconData iconData, String? label}) {
    return Tab(
      iconMargin: const EdgeInsets.only(bottom: 3),
      icon: Icon(iconData),
      child: Text(label ?? "", style: detailMedium),
    );
  }
}
