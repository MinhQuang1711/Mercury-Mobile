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
  static LinearGradient getGreenGradient() => setGradient(
      [AppColor.blue.withOpacity(0.2), AppColor.blueShade2.withOpacity(0.2)]);
  static LinearGradient getYellowGradient() =>
      setGradient([AppColor.yellow, AppColor.yellowLight]);
  static LinearGradient getRedGradient() => setGradient(
      [AppColor.darkRed.withOpacity(0.2), AppColor.red.withOpacity(0.2)]);
}
