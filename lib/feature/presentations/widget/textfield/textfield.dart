import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import '../../../../config/theme/color.dart';
import '../../../../config/theme/text_style.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.onTap,
    this.readOnly,
    this.hintText,
    this.onChanged,
    this.sufWidget,
    this.controller,
    this.prefWidget,
    this.borderColor,
    this.textInputType,
    this.backgroundColor,
    this.onTapClearButton,
  });
  final bool? readOnly;
  final String? hintText;
  final Widget? sufWidget;
  final Widget? prefWidget;
  final Function()? onTap;
  final Color? borderColor;
  final Color? backgroundColor;
  final TextInputType? textInputType;
  final Function()? onTapClearButton;
  final TextEditingController? controller;
  final Function(String? onChaned)? onChanged;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool hasValue = false;
  @override
  void initState() {
    super.initState();
  }

  void onChanged(String? val) {
    if (val != null && val.isNotEmpty && !hasValue) {
      hasValue = true;
      setState(() {});
    }
    if (val != null && val.isEmpty && hasValue) {
      hasValue = false;
      setState(() {});
    }
    widget.onChanged?.call(val);
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      onChanged: onChanged,
      controller: widget.controller,
      readOnly: widget.readOnly ?? false,
      keyboardType: widget.textInputType,
      decoration: TextFieldProperties.getInputDecoration(
        hintText: widget.hintText,
        prefWidget: widget.prefWidget,
        borderColor: widget.borderColor,
        backgroundColor: widget.backgroundColor,
        sufWidget: hasValue ? _closeButton() : widget.sufWidget,
      ),
    );
  }

  GestureDetector _closeButton() {
    return GestureDetector(
      onTap: widget.onTapClearButton,
      child: const Icon(Icons.close, color: AppColor.grey5),
    );
  }
}

class TextFieldProperties {
  static InputDecoration getInputDecoration({
    String? hintText,
    Color? borderColor,
    Color? backgroundColor,
    Widget? sufWidget,
    Widget? prefWidget,
  }) {
    return InputDecoration(
      filled: true,
      isDense: true,
      hintText: hintText,
      suffixIcon: sufWidget,
      prefixIcon: prefWidget,
      border: getBorder(borderColor),
      disabledBorder: getBorder(null),
      contentPadding: AppPadding.padding12,
      enabledBorder: getBorder(borderColor),
      fillColor: backgroundColor ?? AppColor.grey3,
      errorBorder: getBorder(borderColor ?? AppColor.red),
      focusedBorder: getBorder(borderColor ?? AppColor.blue),
      hintStyle: captionRegular.copyWith(color: Colors.grey.shade700),
    );
  }

  static OutlineInputBorder getBorder(Color? color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(width: 0.7, color: color ?? AppColor.grey3),
    );
  }
}
