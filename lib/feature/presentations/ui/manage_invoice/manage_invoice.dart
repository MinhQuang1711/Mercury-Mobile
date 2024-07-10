import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/singleton/invoice_singleton.dart';
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

class MangageInvoicePage extends StatefulWidget {
  const MangageInvoicePage({super.key});

  @override
  State<MangageInvoicePage> createState() => _MangageInvoicePageState();
}

class _MangageInvoicePageState extends State<MangageInvoicePage>
    with SingleTickerProviderStateMixin {
  final tabs = [
    const Tab(text: "Đơn bán"),
    const Tab(text: "Đơn nhập"),
  ];
  final children = [
    const SaleInvoiceScreen(),
    const ImportInvoiceScreen(),
  ];
  late final AppTabBar appTabBar;
  @override
  void initState() {
    var tabCtrl = TabController(length: tabs.length, vsync: this);
    InvoiceSingleton.instance.setController(tabCtrl);
    appTabBar = AppTabBar(
      tabs: tabs,
      children: children,
      tabController: InvoiceSingleton.instance.controller,
    );
    super.initState();
  }

  @override
  void dispose() {
    InvoiceSingleton.instance.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _topBar(appTabBar, tabs),
        Expanded(child: appTabBar.tabBarView),
      ],
    );
  }

  Widget _topBar(
    AppTabBar appTabBar,
    List<Tab> tabs,
  ) {
    return Container(
      color: AppColor.blue,
      child: Column(
        children: [
          Text("Hóa đơn", style: h6Bold.copyWith(color: AppColor.white)),
          const SizedBox(height: 5),
          appTabBar.tabBar,
        ],
      ),
    );
  }
}
