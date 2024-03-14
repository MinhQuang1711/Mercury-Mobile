import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      label: "Đăng xuất",
      backgroundColor: AppColor.blueShade2,
      onTap: () => context.go(AppPath.login),
    );
  }
}
