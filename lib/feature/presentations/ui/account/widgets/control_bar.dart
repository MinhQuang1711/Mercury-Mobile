import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class ControlBar extends StatelessWidget {
  const ControlBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
      decoration: BoxDecoration(
        color: AppColor.grey3,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          _optionButton(
            onTap: () {},
            label: "Đổi mật khẩu",
            iconData: Icons.password,
          ),
          _optionButton(
            onTap: () {},
            iconData: Icons.update_sharp,
            label: "Chỉnh sửa thông tin cá nhân",
          ),
        ],
      ),
    );
  }

  Widget _optionButton({
    Function()? onTap,
    required String label,
    required IconData iconData,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.translucent,
      child: Row(
        children: [
          Container(
            margin: AppPadding.padding8,
            padding: AppPadding.padding12,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColor.white,
            ),
            child: Center(
              child: Icon(iconData, color: AppColor.grey5, size: 20),
            ),
          ),
          const SizedBox(width: 10),
          Text(label, style: bodyRegular.copyWith(color: AppColor.grey5)),
          const Spacer(),
          if (onTap != null)
            const Icon(
              Icons.keyboard_arrow_right_outlined,
              color: AppColor.grey5,
            )
        ],
      ),
    );
  }
}
