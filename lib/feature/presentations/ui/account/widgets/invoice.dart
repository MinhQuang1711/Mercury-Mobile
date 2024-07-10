import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/container.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../gen/assets.gen.dart';
import 'button.dart';

class AccountInvoice extends StatelessWidget {
  const AccountInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerAccount(
      title: "Hóa đơn",
      child: Row(
        children: [
          AccountButton(
            title: "Đơn bán",
            icon: ImageIcon(AssetImage(Assets.icon.invoice.keyName),
                color: AppColor.blue),
          ),
          AccountButton(
            title: "Đơn nhập",
            icon: ImageIcon(
              AssetImage(Assets.icon.importProd.keyName),
              color: AppColor.blue,
            ),
          ),
        ],
      ),
    );
  }
}
