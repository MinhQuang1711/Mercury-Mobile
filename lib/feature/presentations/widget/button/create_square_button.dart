import 'package:flutter/material.dart';

import '../../../../config/const/padding.dart';
import '../../../../config/const/radius.dart';
import '../../../../config/theme/color.dart';

class CreateSquareButton extends StatelessWidget {
  const CreateSquareButton({
    super.key,
    this.iconData,
    this.onTap,
    this.padding,
  });
  final IconData? iconData;
  final Function()? onTap;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(left: 12),
        padding: padding ?? AppPadding.padding12,
        decoration: BoxDecoration(
          borderRadius: AppContainerBorder.radius8,
          color: AppColor.blue.withOpacity(0.3),
        ),
        child: Icon(
          iconData ?? Icons.add,
          size: 22,
          color: AppColor.blue,
        ),
      ),
    );
  }
}
