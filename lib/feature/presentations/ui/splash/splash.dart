import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/singleton/splash_singleton.dart';
import 'package:mercury/feature/presentations/ui/splash/widgets/bottom_bar.dart';
import 'package:mercury/feature/presentations/ui/splash/widgets/tab_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPage();
  }
}

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SplashSingleton.instance
        .setController(TabController(length: 2, vsync: this));
  }

  @override
  void dispose() {
    super.dispose();
    SplashSingleton.instance.splashTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
        backgroundColor: AppColor.blue,
      ),
      body: const SafeArea(
        child: SplashTabView(),
      ),
      bottomNavigationBar: const SplashBottomBar(),
    );
  }
}
