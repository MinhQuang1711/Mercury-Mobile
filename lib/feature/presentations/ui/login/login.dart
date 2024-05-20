import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/login_button.dart';
import 'package:mercury/feature/presentations/ui/login/widgets/password_field.dart';
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
    return AppScafold(
      child: Form(
        key: formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UserNameField(cubit: cubit),
            const SizedBox(height: 15),
            PasswordField(cubit: cubit),
            const SizedBox(height: 40),
            LoginButton(formKey: formKey),
          ],
        ),
      ),
    );
  }
}
