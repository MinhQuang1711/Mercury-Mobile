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
      title: "Đối tác & phiếu giảm",
      child: Row(
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
    );
  }
}
