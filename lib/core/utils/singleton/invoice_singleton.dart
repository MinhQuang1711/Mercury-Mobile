import 'package:flutter/material.dart';

class InvoiceSingleton {
  InvoiceSingleton._();

  static final instance = InvoiceSingleton._();

  late final TabController _tabController;

  void setController(TabController ctrl) {
    _tabController = ctrl;
  }

  TabController get controller => _tabController;
}
