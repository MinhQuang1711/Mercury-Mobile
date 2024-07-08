import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/import_invoice.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/get/sale_invoice.dart';

import '../../../../config/theme/text_style.dart';
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
          _topBar(appTabBar, tabs),
          Expanded(child: appTabBar.tabBarView),
        ],
      ),
    );
  }

  Widget _topBar(
    AppTabBar appTabBar,
    List<Tab> tabs,
  ) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 12,
        right: 12,
      ),
      child: TabBar(
        tabs: tabs,
        labelStyle: captionMedium,
        labelColor: AppColor.blue,
        indicatorColor: AppColor.blue,
        unselectedLabelStyle: detailRegular,
        indicatorSize: TabBarIndicatorSize.tab,
      ),
    );
  }
}
