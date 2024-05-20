import 'package:flutter/material.dart';
import 'package:mercury/config/const/box_shadow.dart';
import 'package:mercury/config/const/margin.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';

class CardContainer extends StatelessWidget {
  const CardContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: defaultMargin,
      padding: AppPadding.padding14,
      decoration: BoxDecoration(
        color: AppColor.white,
        boxShadow: [defaultBoxShadow],
        borderRadius: AppContainerBorder.radius8,
      ),
      child: child,
    );
  }
}
