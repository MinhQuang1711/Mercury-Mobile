import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';

import '../../../../../config/const/gradient.dart';
import '../../../../../config/const/padding.dart';
import '../../../../../config/const/radius.dart';
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

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: [
          Expanded(
            child: _createInvoiceButton(
              onTap: createSaleInovice,
              color: AppColor.darkRed,
              title: "Thêm hóa đơn bán",
              assetGenImage: Assets.icon.invoices,
              gradient: AppGradient.getRedGradient(),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: _createInvoiceButton(
              onTap: createImportInvoice,
              title: "Thêm hóa đơn nhập",
              color: AppColor.blueShade2,
              assetGenImage: Assets.icon.import,
              gradient: AppGradient.getBlueGradient(),
            ),
          )
        ],
      ),
    );
  }

  Widget _createInvoiceButton({
    required String title,
    required Gradient gradient,
    required AssetGenImage assetGenImage,
    Color? color,
    final Function()? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: AppPadding.padding14,
        decoration: BoxDecoration(
          // gradient: gradient,
          border: Border.all(color: color ?? Colors.white),
          borderRadius: AppContainerBorder.radius6,
        ),
        child: Column(
          children: [
            Text(
              title,
              style: bodyMedium.copyWith(color: color ?? AppColor.white),
            ),
            const SizedBox(height: 7),
            Image.asset(
              assetGenImage.keyName,
              height: 25,
              width: 25,
              color: color ?? AppColor.white,
            ),
          ],
        ),
      ),
    );
  }
}
