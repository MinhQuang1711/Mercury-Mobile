import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/ingredient.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/sale_product.dart';
import 'package:mercury/feature/presentations/widget/app_bar/app_bar.dart';
import 'package:mercury/feature/presentations/widget/tab_bar/tab_bar.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductPage();
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: "Sản phẩm"),
      const Tab(text: "Nguyên liệu"),
    ];
    final children = [
      const SaleProductScreen(),
      const IngredientScreen(),
    ];
    final appTabBar = AppTabBar(tabs: tabs, children: children);
    return DefaultTabController(
      length: tabs.length,
      child: Column(
        children: [
          _topBar(appTabBar),
          const SizedBox(height: 15),
          Expanded(child: appTabBar.tabBarView),
        ],
      ),
    );
  }

  Container _topBar(AppTabBar appTabBar) {
    return Container(
      color: AppColor.blue,
      child: Column(
        children: [
          const CustomAppBar(
            labelTitle: "Quản lý",
          ),
          appTabBar.tabBar,
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
