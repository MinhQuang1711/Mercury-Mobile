import 'package:flutter/material.dart';
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
      height: 50,
      decoration: const BoxDecoration(
        border: Border(top: BorderSide(width: 0.1)),
      ),
      margin: const EdgeInsets.symmetric(vertical: 3),
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
