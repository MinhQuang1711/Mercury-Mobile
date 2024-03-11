import 'package:flutter/material.dart';
import 'package:mercury/config/router/route.dart';
import 'package:mercury/config/server.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/injection/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  AppConfig.instance.configServer(ServerConfig.company());
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
