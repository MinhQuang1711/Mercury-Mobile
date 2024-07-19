import 'package:flutter/material.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../gen/assets.gen.dart';
import 'button.dart';
import 'container.dart';

class CustomerAndCupon extends StatelessWidget {
  const CustomerAndCupon({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerAccount(
      title: "Thêm",
      child: Column(
        children: [
          Row(
            children: [
              AccountButton(
                title: "Khách hàng",
                icon: ImageIcon(AssetImage(Assets.icon.customer.keyName),
                    color: AppColor.blue),
              ),
              AccountButton(
                title: "Phiếu giảm",
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
                title: "Bảng giá",
                icon: ImageIcon(
                  AssetImage(Assets.icon.priceTag.keyName),
                  color: AppColor.blue,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
