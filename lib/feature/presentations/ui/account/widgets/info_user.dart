import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../../core/utils/singleton/user_singleton.dart';

class UserInfoWidget extends StatelessWidget {
  const UserInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        color: AppColor.grey3,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _infoUserWidget(
            iconData: Icons.phone,
            info: UserSingleton.instance.user?.phoneNumber,
          ),
          _infoUserWidget(
            iconData: Icons.email_sharp,
            info: UserSingleton.instance.user?.email,
          ),
        ],
      ),
    );
  }

  Widget _infoUserWidget({required IconData iconData, String? info}) {
    return Container(
      margin: AppPadding.padding8,
      child: Row(
        children: [
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColor.white),
            padding: AppPadding.padding12,
            child: Icon(iconData, size: 20, color: AppColor.grey4),
          ),
          const SizedBox(width: 10),
          Text(info ?? "", style: bodyRegular.copyWith(color: AppColor.grey5))
        ],
      ),
    );
  }
}
