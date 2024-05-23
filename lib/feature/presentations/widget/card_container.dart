import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';

import '../../../config/const/margin.dart';
import '../../../config/theme/color.dart';

class ContainerCard extends StatelessWidget {
  const ContainerCard({super.key, this.child, this.onTap});
  final Widget? child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        margin: defaultMargin,
        padding: AppPadding.padding14,
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
