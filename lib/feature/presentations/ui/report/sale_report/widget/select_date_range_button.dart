import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/gen/assets.gen.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/const/radius.dart';
import '../../../../../../config/theme/color.dart';

class SelectDateRangeButton extends StatelessWidget {
  const SelectDateRangeButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.7,
          color: AppColor.grey4,
        ),
        borderRadius: AppContainerBorder.radius6,
      ),
      child: Row(
        children: [
          _button(content: "Từ", onTap: () {}),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text("|"),
          ),
          _button(content: "Đến", onTap: () {}),
        ],
      ),
    );
  }

  Widget _button({
    bool? isActive,
    required String content,
    required Function() onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Row(
          children: [
            Expanded(
                child: Text(
              content,
              style: isActive != true
                  ? captionRegular.copyWith(color: AppColor.grey4)
                  : captionBold.copyWith(color: AppColor.blue),
            )),
            ImageIcon(
              AssetImage(Assets.icon.calendar.keyName),
              color: AppColor.grey4,
              size: 22,
            )
          ],
        ),
      ),
    );
  }
}
