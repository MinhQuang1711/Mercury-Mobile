import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
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
          child: Image.asset(Assets.image.empty.keyName),
        ),
        const SizedBox(height: 20),
        Text(
          "Danh sách trống !!!!",
          style: detailBold.copyWith(color: AppColor.blueShade2),
        ),
        const SizedBox(height: 10),
        if (onTap != null)
          Container(
            padding: AppPadding.padding12,
            decoration: BoxDecoration(
                shape: BoxShape.circle, color: AppColor.blue.withOpacity(0.2)),
            child: GestureDetector(
              onTap: onTap,
              child: const Icon(
                Icons.refresh,
                color: AppColor.blueShade2,
              ),
            ),
          ),
      ],
    );
  }
}
