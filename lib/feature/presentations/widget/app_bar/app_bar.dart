import 'package:flutter/material.dart';

import '../../../../config/theme/text_style.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key, this.labelTitle, this.actionWidget});
  final String? labelTitle;
  final Widget? actionWidget;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.white,
      actions: [actionWidget ?? const SizedBox()],
      title: Padding(
        padding: const EdgeInsets.all(8),
        child: Text(
          labelTitle ?? "",
          style: h6Bold,
        ),
      ),
    );
  }

  final double _defaultAppbarHeight = 50;
  @override
  Size get preferredSize => Size.fromHeight(_defaultAppbarHeight);
}
