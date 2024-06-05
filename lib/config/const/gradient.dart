import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

class AppGradient {
  static const AlignmentGeometry _begin = Alignment.topLeft;
  static const AlignmentGeometry _end = Alignment.bottomRight;

  static LinearGradient setGradient(final List<Color> colors) => LinearGradient(
        colors: colors,
        begin: _begin,
        end: _end,
      );
  static LinearGradient getGreenGradient() =>
      setGradient([AppColor.green, AppColor.greenLight]);
  static LinearGradient getYellowGradient() =>
      setGradient([AppColor.yellow, AppColor.yellowLight]);
  static LinearGradient getRedGradient() =>
      setGradient([AppColor.darkRed, AppColor.redLight]);
}
