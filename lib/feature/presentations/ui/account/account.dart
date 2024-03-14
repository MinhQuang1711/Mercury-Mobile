import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/avartar.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/control_bar.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/info_user.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/logout_button.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountPage();
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: const CustomAppBar(labelTitle: "Giới thiệu"),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AccountAvatar(),
          Padding(
            padding: AppPadding.padding12,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5),
                Text(
                  "Thông tin cá nhân",
                  style: bodyBold.copyWith(color: AppColor.grey5),
                ),
                const SizedBox(height: 5),
                const UserInfoWidget(),
                const SizedBox(height: 25),
                Text(
                  "Cài đặt chỉnh sửa",
                  style: bodyBold.copyWith(color: AppColor.grey5),
                ),
                const SizedBox(height: 5),
                const ControlBar(),
                const SizedBox(height: 100),
                const LogoutButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
