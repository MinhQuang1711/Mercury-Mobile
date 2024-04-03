// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/button_size.dart';

enum ButtonSize { SIZE_24, SIZE_32, SIZE_40 }

enum ButtonType { FILL, OUTLINE }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap,
    this.borderColor,
    this.isLoading,
    this.textColor,
    this.buttonSize,
    this.buttonType,
    this.borderRadius,
    this.backgroundColor,
    required this.label,
  });

  final String label;
  final bool? isLoading;
  final Color? textColor;
  final Color? borderColor;
  final Function()? onTap;
  final ButtonType? buttonType;
  final Color? backgroundColor;
  final ButtonSize? buttonSize;
  final BorderRadiusGeometry? borderRadius;

  Widget coppyWith({
    String? label,
    bool? isLoading,
    Function()? onTap,
  }) {
    return AppButton(
      textColor: textColor,
      buttonType: buttonType,
      buttonSize: buttonSize,
      borderColor: borderColor,
      label: label ?? this.label,
      borderRadius: borderRadius,
      onTap: onTap ?? this.onTap,
      backgroundColor: backgroundColor,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  Widget build(BuildContext context) {
    final currentButtonType = buttonType ?? ButtonType.FILL;
    final currentButtonSize = buttonSize ?? ButtonSize.SIZE_32;
    Padding indicator() {
      return Padding(
        padding: const EdgeInsets.only(left: 10),
        child: CupertinoActivityIndicator(
          color: buttonType == ButtonType.FILL
              ? Colors.white
              : borderColor ?? AppColor.blue,
        ),
      );
    }

    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: currentButtonSize.getPadding(),
        decoration: BoxDecoration(
          borderRadius: borderRadius ?? currentButtonSize.getBorderRadius(),
          color: currentButtonType.getBackgroundColor(color: backgroundColor),
        ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                label,
                overflow: TextOverflow.ellipsis,
                style: currentButtonSize.getTextstyle(
                    color: currentButtonType.getTextColor(color: textColor)),
              ),
              if (isLoading == true) indicator()
            ],
          ),
        ),
      ),
    );
  }
}
