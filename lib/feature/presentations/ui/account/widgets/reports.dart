import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../gen/assets.gen.dart';
import 'button.dart';
import 'container.dart';

class Reports extends StatelessWidget {
  const Reports({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerAccount(
      title: "Báo cáo",
      child: Column(
        children: [
          Row(
            children: [
              AccountButton(
                title: "Cuối ngày",
                icon: ImageIcon(AssetImage(Assets.icon.customer.keyName),
                    color: AppColor.blue),
              ),
              AccountButton(
                title: "Bán hàng",
                icon: ImageIcon(
                  AssetImage(Assets.icon.coupon.keyName),
                  color: AppColor.blue,
                ),
              ),
            ],
          ),
          const SizedBox(height: 25),
          Row(
            children: [
              AccountButton(
                title: "Nguyên liệu",
                icon: ImageIcon(
                  AssetImage(Assets.icon.coupon.keyName),
                  color: AppColor.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
