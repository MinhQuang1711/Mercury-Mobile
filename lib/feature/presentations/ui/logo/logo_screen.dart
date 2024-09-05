import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/state/state.dart';
import 'package:mercury/gen/assets.gen.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt.get<AuthenBloc>()..add(const AuthenEvent.getUser()),
      child: const LogoPage(),
    );
  }
}

class LogoPage extends StatelessWidget {
  const LogoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthenBloc, AuthenState>(
      listener: (context, state) {
        state.whenOrNull(
          failure: (msg) => context.go(AppPath.login),
          gotUser: () => context.go(AppPath.splash),
        );
      },
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 249, 222, 226),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: AppContainerBorder.radius12,
                image: DecorationImage(
                    image: AssetImage(Assets.image.ava.keyName))),
          ),
        ),
      ),
    );
  }
}
