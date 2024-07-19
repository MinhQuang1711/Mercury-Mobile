import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/model/token/token.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/login_button.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/password_field.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/update_domain_button.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/user_name_field.dart';
import 'package:mercury/feature/presentations/widget/app_scaffold.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<AuthenCubit>()),
        BlocProvider(create: (_) => getIt.get<AuthenBloc>()),
      ],
      child: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<AuthenCubit>();

    void onLoginSuccess(Token token) async {
      cubit.saveTokenAndUser(token);
      context.go(AppPath.splash);
    }

    void onLoginFaild(String msg) {
      context.showFailureSnackBar(msg);
    }

    return BlocListener<AuthenBloc, AuthenState>(
      listener: (context, state) => state.whenOrNull(
        failure: onLoginFaild,
        loginSuccess: onLoginSuccess,
      ),
      child: AppScafold(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 45),
              UserNameField(cubit: cubit),
              const SizedBox(height: 15),
              PasswordField(cubit: cubit),
              const UpdateDomainButton(),
              const SizedBox(height: 40),
              LoginButton(formKey: formKey),
            ],
          ),
        ),
      ),
    );
  }
}
