import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';

import '../../../../../../../config/theme/color.dart';
import '../../../../../../../config/theme/text_style.dart';
import 'password_field.dart';
import 'submit_button.dart';

class SubmitPassScreen extends StatefulWidget {
  const SubmitPassScreen(
      {super.key, required this.controller, required this.cubit});
  final PageController controller;
  final UpdateBankCubit cubit;

  @override
  State<SubmitPassScreen> createState() => _SubmitPassScreenState();
}

class _SubmitPassScreenState extends State<SubmitPassScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _header(),
        _description(),
        Form(
          key: formKey,
          child: PasswordField(onChanged: widget.cubit.changedPassword),
        ),
        const SizedBox(height: 40),
        SubmitButton(formKey: formKey)
      ],
    );
  }

  Padding _description() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
              text: ("Vui lòng nhập "),
              style: bodyRegular.copyWith(color: AppColor.grey5),
              children: [
                TextSpan(
                    text: ("mật khẩu đăng nhập").toUpperCase(),
                    style: bodyMedium.copyWith(color: AppColor.grey5)),
                const TextSpan(text: " để xác thực thay đổi")
              ])),
    );
  }

  Row _header() {
    return Row(
      children: [
        GestureDetector(
          onTap: () => widget.controller.previousPage(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutSine),
          child: const Icon(Icons.arrow_back, color: AppColor.blue),
        ),
        const SizedBox(width: 30),
        Text("Xác thực mật khẩu ",
            style: bodyBold.copyWith(color: AppColor.blue)),
      ],
    );
  }
}
