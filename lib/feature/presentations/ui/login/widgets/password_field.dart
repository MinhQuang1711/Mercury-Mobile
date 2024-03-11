import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/state/state.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({super.key, required this.cubit});
  final AuthenCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthenCubit, AuthenCubitState>(
      buildWhen: (previous, current) => previous.isHiden != current.isHiden,
      builder: (context, state) => AppTextField(
        obs: state.isHiden,
        hintText: "Nhập mật khẩu",
        prefWidget: _emailIcon(),
        sufWidget: _showPasswordButton(state.isHiden),
      ),
    );
  }

  Icon _emailIcon() {
    return const Icon(
      Icons.password_outlined,
      color: AppColor.grey4,
    );
  }

  Widget _showPasswordButton(bool isHiden) {
    return GestureDetector(
      onTap: cubit.changedIsHiden,
      child: isHiden
          ? const Icon(Icons.remove_red_eye)
          : const Icon(Icons.remove_red_eye_outlined),
    );
  }
}
