import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/gen/assets.gen.dart';

class PriceListButton extends StatelessWidget {
  const PriceListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _iconTag(),
          Text(
            "  Mặc định  ",
            style: captionMedium.copyWith(color: AppColor.grey5),
          ),
          _dropIcon()
        ],
      ),
    );
  }

  Icon _dropIcon() {
    return const Icon(
      Icons.keyboard_arrow_down_outlined,
      size: 18,
    );
  }

  ImageIcon _iconTag() {
    return ImageIcon(
      AssetImage(Assets.icon.priceTag.keyName),
      color: AppColor.blue,
    );
  }
}
