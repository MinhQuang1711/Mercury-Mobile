import 'package:flutter/material.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/domain/model/sale_invoice_request/sale_invoice_request.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/export_sale_invoice.dart';
import 'package:screenshot/screenshot.dart';

class SaveInvoiceButton extends StatelessWidget {
  const SaveInvoiceButton(
      {super.key,
      required this.saleInvoice,
      required this.total,
      required this.discount});
  final SaleInvoice saleInvoice;
  final double total;
  final double discount;

  @override
  Widget build(BuildContext context) {
    var detailSaleInvoice = (saleInvoice.detailSaleInvoices ?? [])
        .map((e) => ComboBox(
              quantity: e.quantity,
              name: e.product?.name,
              price: e.product?.salePrice,
            ))
        .toList();
    var invoiceRequest =
        SaleInvoiceRequest(detailSaleInvoice: detailSaleInvoice);
    void onTap() {
      ScreenshotController controller = ScreenshotController();

      context.showAppDialog(
        insertPadding: AppPadding.padding4,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ExportSaleInvoiceScreen(
              total: total,
              discount: discount,
              saleInvoice: invoiceRequest,
            ),
            Padding(
              padding: AppPadding.padding14,
              child: AppButton(
                label: "Tải xuống",
                onTap: () => controller
                    .captureFromWidget(ExportSaleInvoiceScreen(
                        total: total,
                        discount: discount,
                        saleInvoice: invoiceRequest))
                    .then((bytes) async {
                  Gal.putImageBytes(bytes).then((value) => context.pop());
                }),
                buttonType: ButtonType.OUTLINE,
              ),
            ),
          ],
        ),
      );
    }

    return Expanded(
      child: AppButton(
        onTap: onTap,
        label: "Hóa đơn",
        sufWidget: _saveIcon(),
        buttonType: ButtonType.OUTLINE,
        borderColor: AppColor.blue,
      ),
    );
  }

  Icon _saveIcon() {
    return const Icon(
      Icons.save_alt_rounded,
      color: AppColor.blue,
    );
  }
}
