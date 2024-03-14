import 'package:flutter/material.dart';
import 'package:mercury/core/utils/singleton/splash_singleton.dart';
import 'package:mercury/feature/presentations/ui/account/account.dart';
import 'package:mercury/feature/presentations/ui/product/product.dart';

class SplashTabView extends StatelessWidget {
  const SplashTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      controller: SplashSingleton.instance.splashTabController,
      children: const [
        ProductScreen(),
        AccountScreen(),
      ],
    );
  }
}
