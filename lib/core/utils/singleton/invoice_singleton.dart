import 'package:flutter/material.dart';

class InvoiceSingleton {
  InvoiceSingleton._();

  static final instance = InvoiceSingleton._();

  TabController? _tabController;

  void setController(TabController? ctrl) {
    _tabController = ctrl;
  }

  TabController? get controller => _tabController;
}
