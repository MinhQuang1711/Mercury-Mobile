import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/app_provider.dart';
import 'package:mercury/config/server.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/core/utils/singleton/token_singleton.dart';
import 'package:mercury/core/utils/storage/domain_storage.dart';
import 'package:mercury/core/utils/storage/token_storage.dart';
import 'package:mercury/feature/presentations/bloc/global_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initInjection();
  HttpOverrides.global = MyHttpOverrides();
  TokenSingleton.instance.saveToken(await TokenStorage.instance.getToken());

  // Lấy domain tu local
  final String? domain = await DomainStorage.instance.getDomain();
  final ServerConfig serverConfig = ServerConfig("")
    ..setDomain(domain ?? "192.168.1.29");
  AppConfig.instance.configServer(serverConfig);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<SplashCubit>()),
        BlocProvider(create: (_) => getIt.get<GlobalCubit>()),
      ],
      child: const MyApp(),
    ),
  );
}
