import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import '../../../../config/theme/color.dart';
import '../../../../config/theme/text_style.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    super.key,
    this.obs,
    this.onTap,
    this.canDelete,
    this.initValue,
    this.readOnly,
    this.hintText,
    this.onChanged,
    this.sufWidget,
    this.controller,
    this.prefWidget,
    this.borderColor,
    this.validator,
    this.contentPadding,
    this.textInputType,
    this.backgroundColor,
    this.onTapClearButton,
  });
  final bool? obs;
  final bool? canDelete;
  final String? initValue;
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
  final EdgeInsetsGeometry? contentPadding;
  final String? Function(String?)? validator;
  final Function(String? onChaned)? onChanged;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  bool hasValue = false;
  Timer? timer;
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    super.initState();
    if (widget.controller != null) {
      controller = widget.controller!;
    }
    if (widget.initValue != null) {
      controller.text = widget.initValue!;
    }
    controller.addListener(() {
      if (controller.text.isNotEmpty && !hasValue) {
        hasValue = true;
        setState(() {});
      }
      if (controller.text.isEmpty && hasValue) {
        hasValue = false;
        setState(() {});
      }
    });
  }

  void onChanged(String? val) {
    timer?.cancel();
    timer = Timer(
        const Duration(milliseconds: 500), () => widget.onChanged?.call(val));
  }

  @override
  void dispose() {
    controller.dispose();
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obs ?? false,
      onTap: widget.onTap,
      onChanged: onChanged,
      controller: controller,
      validator: widget.validator,
      readOnly: widget.readOnly ?? false,
      keyboardType: widget.textInputType,
      onTapOutside: (event) {
        FocusScope.of(context).hasFocus
            ? FocusScope.of(context).unfocus()
            : null;
      },
      decoration: TextFieldProperties.getInputDecoration(
        hintText: widget.hintText,
        prefWidget: widget.prefWidget,
        borderColor: widget.borderColor,
        contentPadding: widget.contentPadding,
        backgroundColor: widget.backgroundColor,
        sufWidget: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (hasValue && widget.canDelete == true) _closeButton(),
            if (widget.sufWidget != null)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 13),
                child: widget.sufWidget!,
              ),
          ],
        ),
      ),
    );
  }

  GestureDetector _closeButton() {
    void onTapClearButton() {
      controller.clear();
      widget.onTapClearButton?.call();
    }

    return GestureDetector(
      onTap: onTapClearButton,
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
    EdgeInsetsGeometry? contentPadding,
  }) {
    return InputDecoration(
      filled: true,
      isDense: true,
      hintText: hintText,
      suffixIcon: sufWidget,
      prefixIcon: prefWidget,
      border: getBorder(borderColor),
      disabledBorder: getBorder(null),
      contentPadding: contentPadding ?? AppPadding.padding16,
      enabledBorder: getBorder(borderColor),
      fillColor: backgroundColor ?? AppColor.grey2,
      errorBorder: getBorder(borderColor ?? AppColor.red),
      focusedBorder: getBorder(borderColor ?? AppColor.blue),
      hintStyle: captionRegular.copyWith(color: AppColor.grey4, fontSize: 16),
    );
  }

  static OutlineInputBorder getBorder(Color? color) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(6),
      borderSide: BorderSide(width: 0.7, color: color ?? AppColor.grey3),
    );
  }
}
