import 'package:flutter/material.dart';

class SplashSingleton {
  SplashSingleton._();
  static final instance = SplashSingleton._();
  late final TabController splashTabController;

  void setController(TabController controller) {
    splashTabController = controller;
  }

  void onChanged(int index) {
    splashTabController.animateTo(index);
  }
}
