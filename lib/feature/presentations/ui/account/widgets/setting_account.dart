import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/ui/account/view/update_bank_screen/update_bank_screen.dart';

import '../../../../../config/theme/text_style.dart';
import 'container.dart';

class SettingAccount extends StatelessWidget {
  const SettingAccount({super.key});

  @override
  Widget build(BuildContext context) {
    void onUpdateBank() {
      context.showBottomSheetAndListen(
        child: const UpdateBankScreen(),
      );
    }

    return ContainerAccount(
      style: bodyRegular,
      title: "CÀI ĐẶT TÀI KHOẢN",
      child: Column(
        children: [
          _updatePassword(),
          _updateBank(onTap: onUpdateBank),
          _logout(context),
        ],
      ),
    );
  }

  ListTile _updateBank({Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      leading: const Icon(Icons.payment_sharp),
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Đổi tài khoản thanh toán",
            style: bodyRegular,
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            size: 16,
            color: AppColor.grey4,
          )
        ],
      ),
    );
  }

  ListTile _updatePassword() {
    return const ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Icon(Icons.password_rounded),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Đổi mật khẩu",
            style: bodyRegular,
          ),
          Icon(
            Icons.arrow_forward_ios_sharp,
            size: 16,
            color: AppColor.grey4,
          )
        ],
      ),
    );
  }

  ListTile _logout(BuildContext context) {
    return ListTile(
      onTap: () => context.go(AppPath.login),
      contentPadding: EdgeInsets.zero,
      leading: const Icon(
        Icons.logout,
        color: AppColor.red,
      ),
      title: Text(
        "Đăng xuất",
        style: bodyRegular.copyWith(color: AppColor.red),
      ),
    );
  }
}
