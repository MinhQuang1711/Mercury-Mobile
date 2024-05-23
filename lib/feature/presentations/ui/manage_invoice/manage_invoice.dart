import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/import_invoice.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/get/sale_invoice.dart';

import '../../../../config/theme/color.dart';
import '../../widget/app_bar/app_bar.dart';
import '../../widget/tab_bar/tab_bar.dart';

class ManageInvoiceScreen extends StatelessWidget {
  const ManageInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MangageInvoicePage();
  }
}

class MangageInvoicePage extends StatelessWidget {
  const MangageInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabs = [
      const Tab(text: "Đơn bán"),
      const Tab(text: "Đơn nhập"),
    ];
    final children = [
      const SaleInvoiceScreen(),
      const ImportInvoiceScreen(),
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
            labelTitle: "Hóa đơn",
          ),
          appTabBar.tabBar,
          const SizedBox(height: 10)
        ],
      ),
    );
  }
}
