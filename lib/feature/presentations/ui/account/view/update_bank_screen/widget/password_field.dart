import 'package:flutter/material.dart';
import 'package:mercury/core/utils/validator/validator.dart';

import '../../../../../../../config/theme/color.dart';
import '../../../../../../../config/theme/text_style.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({super.key, required this.onChanged});
  final Function(String?) onChanged;
  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _isDisplay = true;
  void _changedObs() {
    _isDisplay = !_isDisplay;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: TextFormField(
        autofocus: true,
        onTapOutside: (val) {
          FocusScope.of(context).unfocus();
        },
        validator: Validator.password,
        obscureText: _isDisplay,
        decoration: _decoration(),
        style: h6Regular.copyWith(color: AppColor.blue),
      ),
    );
  }

  InputDecoration _decoration() {
    return InputDecoration(
      labelText: "Nhập mật khẩu",
      labelStyle: h6Regular.copyWith(color: AppColor.blue),
      isDense: true,
      suffixIcon: GestureDetector(
        onTap: _changedObs,
        child: Icon(
          _isDisplay ? Icons.remove_red_eye : Icons.remove_red_eye_outlined,
        ),
      ),
      // sda
      hintStyle: bodyRegular.copyWith(color: AppColor.grey5),
      contentPadding: const EdgeInsetsDirectional.symmetric(vertical: 10),
      border: _underBorder(),
      enabledBorder: _underBorder(),
      focusedBorder: _underBorder(),
      disabledBorder: _underBorder(),
    );
  }

  UnderlineInputBorder _underBorder() =>
      const UnderlineInputBorder(borderSide: BorderSide(color: AppColor.blue));
}
