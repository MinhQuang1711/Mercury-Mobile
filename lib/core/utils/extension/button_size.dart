import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/widget/button/button.dart';

extension ButtonSizeEx on ButtonSize {
  EdgeInsets getPadding() {
    switch (this) {
      case ButtonSize.SIZE_24:
        return const EdgeInsets.symmetric(horizontal: 10, vertical: 8);
      case ButtonSize.SIZE_32:
        return const EdgeInsets.symmetric(horizontal: 12, vertical: 10);
      case ButtonSize.SIZE_40:
        return const EdgeInsets.symmetric(horizontal: 14, vertical: 10);
    }
  }

  TextStyle getTextstyle({Color? color}) {
    switch (this) {
      case ButtonSize.SIZE_24:
        return captionRegular.copyWith(color: color);
      case ButtonSize.SIZE_32:
        return bodyRegular.copyWith(color: color);
      case ButtonSize.SIZE_40:
        return bodyBold.copyWith(color: color);
    }
  }

  BorderRadius getBorderRadius() {
    switch (this) {
      case ButtonSize.SIZE_24:
        return BorderRadius.circular(6);
      case ButtonSize.SIZE_32:
        return BorderRadius.circular(8);
      case ButtonSize.SIZE_40:
        return BorderRadius.circular(10);
    }
  }
}

extension ButtonTypeEx on ButtonType {
  Color getBackgroundColor({Color? color}) {
    switch (this) {
      case ButtonType.FILL:
        return color ?? AppColor.blue;
      case ButtonType.OUTLINE:
        return color ?? AppColor.white;
    }
  }

  Color getBorderColor({Color? color}) => color ?? AppColor.blue;

  Color getTextColor({Color? color}) {
    switch (this) {
      case ButtonType.FILL:
        return color ?? AppColor.white;
      case ButtonType.OUTLINE:
        return color ?? AppColor.blue;
    }
  }
}
