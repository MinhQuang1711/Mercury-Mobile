import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

import 'widgets/bottom_bar.dart';
import 'widgets/tab_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPage();
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: const SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: SplashTabView()),
            Positioned(
              left: 10,
              right: 10,
              bottom: 15,
              child: SplashBottomBar(),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const SplashBottomBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 1,
      backgroundColor: AppColor.blue,
    );
  }
}
