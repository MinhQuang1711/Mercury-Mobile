import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';

import '../../../../config/theme/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
      {super.key, this.labelTitle, this.actionWidget, this.labelColor});
  final String? labelTitle;
  final Widget? actionWidget;
  final Color? labelColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding8,
      child: Center(
        child: Text(
          labelTitle ?? "",
          style: h6Medium.copyWith(color: AppColor.white),
        ),
      ),
    );
  }

  final double _defaultAppbarHeight = 45;
  @override
  Size get preferredSize => Size.fromHeight(_defaultAppbarHeight);
}
