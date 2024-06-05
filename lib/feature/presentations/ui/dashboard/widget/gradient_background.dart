import 'package:flutter/material.dart';
import 'package:mercury/config/const/gradient.dart';
import 'package:mercury/config/theme/color.dart';

class GradientBackGround extends StatelessWidget {
  const GradientBackGround({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: AppPadding.padding12,
      decoration: BoxDecoration(
          gradient:
              AppGradient.setGradient([AppColor.blue, AppColor.blueShade2])),
    );
  }
}
