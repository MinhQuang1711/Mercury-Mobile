import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/presentations/bloc/authen/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class UserNameField extends StatelessWidget {
  const UserNameField({super.key, required this.cubit});
  final AuthenCubit cubit;

  @override
  Widget build(BuildContext context) {
    return AppTextField(
      canDelete: true,
      hintText: "Nhập tên đăng nhập",
      validator: Validator.required,
      onChanged: cubit.changedUserName,
      initValue: cubit.state.dto.userName,
      onTapClearButton: () => cubit.changedUserName(""),
      prefWidget: const Icon(Icons.email, color: AppColor.grey4),
    );
  }
}
