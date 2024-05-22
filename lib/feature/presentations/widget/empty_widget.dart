import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/gen/assets.gen.dart';

class EmptyWidget extends StatelessWidget {
  const EmptyWidget({
    super.key,
    this.onTap,
    this.label,
  });
  final String? label;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: 100,
          height: 100,
          child: Image.asset(Assets.icon.emptyBox.keyName),
        ),
        const SizedBox(height: 20),
        Text(
          "Danh sách trống !!!!",
          style: captionMedium.copyWith(color: AppColor.black),
        ),
        if (onTap != null)
          Container(
            margin: AppPadding.padding16,
            width: MediaQuery.of(context).size.width / 2,
            child: AppButton(
              label: label ?? "Làm mới trang",
              buttonSize: ButtonSize.SIZE_32,
              borderRadius: BorderRadius.circular(10),
            ),
          )
      ],
    );
  }
}
