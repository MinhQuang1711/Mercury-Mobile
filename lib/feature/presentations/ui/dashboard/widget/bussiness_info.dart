import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/number.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class BussinessInfo extends StatelessWidget {
  const BussinessInfo(
      {super.key, required this.title, required this.value, this.color});
  final String title;
  final double value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: captionRegular.copyWith(color: AppColor.grey5, fontSize: 13),
          ),
          const SizedBox(height: 5),
          RichText(
              text: TextSpan(
                  text: value.formatNumber(symbol: false),
                  style: h5Bold.copyWith(
                      color: color ?? AppColor.blueShade2, fontSize: 24),
                  children: [
                TextSpan(
                    text: value.getUnit(),
                    style: captionRegular.copyWith(color: AppColor.grey5))
              ]))
        ],
      ),
    );
  }
}
