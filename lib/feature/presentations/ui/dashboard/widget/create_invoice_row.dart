import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../../gen/assets.gen.dart';

class CreateInvoiceRow extends StatelessWidget {
  const CreateInvoiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    void createSaleInovice() {
      context.push(AppPath.createSaleInvoice);
    }

    void createImportInvoice() {
      context.push(AppPath.createImportInvoice);
    }

    return Wrap(
      spacing: 30,
      children: [
        _button(
          label: "Phiếu giảm",
          assetGenImage: Assets.icon.coupon,
        ),
        _button(
          label: "Đơn nhập",
          onTap: createImportInvoice,
          assetGenImage: Assets.icon.importProd,
        ),
        _button(
          label: "Đơn bán",
          onTap: createSaleInovice,
          assetGenImage: Assets.icon.invoice,
        ),
        _button(
          label: "Khách hàng",
          assetGenImage: Assets.icon.customer,
        ),
      ],
    );
  }

  Widget _button({
    Function()? onTap,
    required String label,
    required AssetGenImage assetGenImage,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          ImageIcon(
            AssetImage(assetGenImage.keyName),
            color: const Color.fromARGB(255, 23, 100, 208),
            size: 35,
          ),
          const SizedBox(height: 10),
          Text(
            label,
            style: captionMedium.copyWith(color: AppColor.grey5),
          )
        ],
      ),
    );
  }
}
