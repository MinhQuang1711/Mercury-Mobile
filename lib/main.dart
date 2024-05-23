import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/router/route.dart';
import 'package:mercury/config/server.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/core/utils/singleton/token_singleton.dart';
import 'package:mercury/core/utils/storage/token_storage.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  TokenSingleton.instance.saveToken(await TokenStorage.instance.getToken());
  AppConfig.instance.configServer(ServerConfig.company());
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<SplashCubit>()),
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
