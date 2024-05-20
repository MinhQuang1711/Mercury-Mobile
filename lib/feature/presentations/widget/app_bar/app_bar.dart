import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

import '../../../../config/theme/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key,
      this.labelTitle,
      this.actionWidget,
      this.labelColor,
      this.backgroundColor});
  final String? labelTitle;
  final Widget? actionWidget;
  final Color? labelColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: backgroundColor ?? AppColor.blue,
      title: Text(
        labelTitle ?? "",
        style: h6Medium.copyWith(color: labelColor ?? AppColor.white),
      ),
    );
  }

  final double _defaultAppbarHeight = 45;
  @override
  Size get preferredSize => Size.fromHeight(_defaultAppbarHeight);
}
