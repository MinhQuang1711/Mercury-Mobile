import 'package:flutter/material.dart';
import 'package:mercury/core/utils/extension/number.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class OverviewBarByDay extends StatelessWidget {
  const OverviewBarByDay({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _info(
          value: 1000000,
          title: "Doanh thu",
          iconData: Icons.inventory_2_outlined,
        ),
        _info(
          value: 1000000,
          color: AppColor.green,
          title: "Lãi sản phẩm",
          iconData: Icons.attach_money_rounded,
        ),
        _info(
          value: 1000000,
          title: "Nhập hàng",
          color: AppColor.darkRed,
          iconData: Icons.download_rounded,
        ),
      ],
    );
  }

  Widget _info(
      {required String title,
      required double value,
      required IconData iconData,
      Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: bodyRegular,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                "${value.formatNumber()} VND",
                style: captionBold.copyWith(color: color ?? AppColor.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
