import 'package:flutter/material.dart';

import '../../../../../config/const/padding.dart';
import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../../core/utils/singleton/user_singleton.dart';
import '../../../../data/model/user/user.dart';

class UserBar extends StatelessWidget {
  const UserBar({super.key});

  @override
  Widget build(BuildContext context) {
    User? user = UserSingleton.instance.user;

    return Container(
      padding: AppPadding.padding14,
      decoration: const BoxDecoration(
          color: AppColor.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
          )),
      child: Row(
        children: [
          Container(
            padding: AppPadding.padding8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.blue.withOpacity(0.2),
            ),
            child: const Icon(
              Icons.person,
              color: AppColor.blue,
            ),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user?.fullName ?? "",
                style: h6Bold.copyWith(fontFamily: "Nunito-Medium-Regular"),
              ),
              Text(
                user?.phoneNumber ?? "",
                style: bodyRegular.copyWith(
                  fontFamily: "",
                  color: AppColor.grey5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
