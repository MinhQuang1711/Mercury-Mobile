import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../config/theme/color.dart';
import '../../../config/theme/text_style.dart';
import 'factory/screen/create_screen.dart';

class ActionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ActionAppBar({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: const Icon(
          Icons.arrow_back_sharp,
          color: AppColor.white,
        ),
      ),
      backgroundColor: AppColor.blue,
      title: Text(
        title ?? CreateScreen().getTitle(),
        style: h6Bold.copyWith(color: AppColor.white),
      ),
    );
  }

  final double _defaultAppbarHeight = 45;
  @override
  Size get preferredSize => Size.fromHeight(_defaultAppbarHeight);
}
