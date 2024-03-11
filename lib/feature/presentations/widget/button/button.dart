// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/button_size.dart';

enum ButtonSize { SIZE_24, SIZE_32, SIZE_40 }

enum ButtonType { FILL, OUTLINE }

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap,
    this.textColor,
    this.buttonSize,
    this.buttonType,
    this.backgroundColor,
    required this.label,
  });
  final String label;
  final Color? textColor;
  final Function()? onTap;
  final ButtonType? buttonType;
  final Color? backgroundColor;
  final ButtonSize? buttonSize;

  @override
  Widget build(BuildContext context) {
    final currentButtonType = buttonType ?? ButtonType.FILL;
    final currentButtonSize = buttonSize ?? ButtonSize.SIZE_32;
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: currentButtonSize.getPadding(),
        decoration: BoxDecoration(
          borderRadius: currentButtonSize.getBorderRadius(),
          color: currentButtonType.getBackgroundColor(color: backgroundColor),
        ),
        child: Center(
          child: Text(
            label,
            overflow: TextOverflow.ellipsis,
            style: currentButtonSize.getTextstyle(
                color: currentButtonType.getTextColor(color: textColor)),
          ),
        ),
      ),
    );
  }
}
