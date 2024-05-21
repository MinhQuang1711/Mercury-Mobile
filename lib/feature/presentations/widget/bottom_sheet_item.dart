import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class BottomSheetItem extends StatelessWidget {
  const BottomSheetItem({
    super.key,
    this.label,
    this.iconData,
    this.onTap,
  });
  final String? label;
  final IconData? iconData;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Container(
        padding: AppPadding.padding14,
        child: Row(
          children: [
            Icon(iconData ?? Icons.delete_outline_rounded,
                size: 30, color: AppColor.blue),
            const SizedBox(width: 12),
            Text(
              label ?? "",
              style: bodyRegular.copyWith(color: AppColor.black),
            )
          ],
        ),
      ),
    );
  }
}
