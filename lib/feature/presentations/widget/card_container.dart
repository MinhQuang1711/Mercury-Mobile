import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';

import '../../../config/const/margin.dart';
import '../../../config/theme/color.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard(
      {super.key, this.child, this.onTap, this.padding, this.margin});
  final Widget? child;
  final Function()? onTap;
  final EdgeInsets? padding;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: margin ?? defaultMargin,
        padding: padding ?? AppPadding.padding14,
        decoration: BoxDecoration(
          color: AppColor.white,
          // boxShadow: defaultBoxShadow,
          borderRadius: AppContainerBorder.radius8,
        ),
        child: child,
      ),
    );
  }
}
