import 'package:flutter/material.dart';
import 'package:mercury/config/router/route.dart';
import 'package:mercury/config/theme/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.blue),
      ),
    );
  }
}
