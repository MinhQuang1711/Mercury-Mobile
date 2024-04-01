import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/ingredient.dart';
import 'package:mercury/feature/presentations/ui/sale_product/sale_product.dart';
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
          Padding(padding: AppPadding.padding12, child: appTabBar.tabBar),
          Expanded(child: appTabBar.tabBarView),
        ],
      ),
    );
  }
}
