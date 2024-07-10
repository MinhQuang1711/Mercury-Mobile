import 'package:flutter/material.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class ReceiverName extends StatelessWidget {
  const ReceiverName({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      initialValue: "PHAM MINH QUANG",
      style: bodyMedium.copyWith(color: AppColor.black),
      decoration: InputDecoration(
        isDense: true,
        labelText: "Tên người nhận",
        enabledBorder: _border(),
        focusedBorder: _border(),
        disabledBorder: _border(),
        labelStyle: captionRegular.copyWith(color: AppColor.blue),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0.7,
        color: AppColor.blue,
      ),
      borderRadius: AppContainerBorder.radius8,
    );
  }
}
