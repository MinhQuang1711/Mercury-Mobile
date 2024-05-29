import 'package:flutter/material.dart';

import '../../../config/const/padding.dart';
import '../../../config/const/radius.dart';
import '../../../config/theme/color.dart';

class GreyContainer extends StatelessWidget {
  const GreyContainer({super.key, this.child});
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        color: AppColor.grey2,
        borderRadius: AppContainerBorder.radius8,
      ),
      child: child,
    );
  }
}
