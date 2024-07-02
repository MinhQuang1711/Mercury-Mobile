import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mercury/config/router/route.dart';
import 'package:mercury/config/server.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/core/utils/singleton/token_singleton.dart';
import 'package:mercury/core/utils/storage/token_storage.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';

import 'feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'feature/presentations/bloc/sale_invoice/bloc/bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  TokenSingleton.instance.saveToken(await TokenStorage.instance.getToken());
  AppConfig.instance.configServer(ServerConfig.home());
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<SplashCubit>()),
        BlocProvider(
          create: (_) => getIt.get<DashboardCubit>()
            ..getfinancialRecordOfDay()
            ..getfinancialRecordOfMonth()
            ..getChartOfDay()
            ..getChartOfMonth()
            ..getFinancialOf7Days(),
        ),
        BlocProvider(create: (_) => getIt.get<SaleInvoiceBloc>()),
        BlocProvider(
          create: (_) => getIt.get<ImportInvoiceBloc>(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      locale: const Locale('vi', ''),
      supportedLocales: const [Locale('vi', '')],
      routerDelegate: AppRouter.router.routerDelegate,
      routeInformationParser: AppRouter.router.routeInformationParser,
      routeInformationProvider: AppRouter.router.routeInformationProvider,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: "Nunito-Medium",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.blue),
      ),
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
