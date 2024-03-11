import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/authen/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onSubmit() {
      if (formKey.currentState?.validate() == true) {
        final cubit = context.read<AuthenCubit>();
        final bloc = context.read<AuthenBloc>();
        bloc.add(AuthenEvent.login(dto: cubit.state.dto));
      }
    }

    return SizedBox(
      width: double.infinity,
      child: AppButton(
        label: "Đăng nhập",
        onTap: onSubmit,
      ),
    );
  }
}
