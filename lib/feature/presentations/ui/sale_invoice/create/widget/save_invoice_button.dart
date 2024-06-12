import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gal/gal.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/export_sale_invoice.dart';
import 'package:screenshot/screenshot.dart';

class SaveinvoiceButton extends StatelessWidget {
  const SaveinvoiceButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      ScreenshotController controller = ScreenshotController();
      final cubit = context.read<CommonSaleInvoiceCubit>();
      context.showAppDialog(
        insertPadding: AppPadding.padding4,
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ExportSaleInvoiceScreen(
                  total: cubit.state.totalPrice,
                  saleInvoice: cubit.state.request,
                  discount: cubit.state.totalDiscount,
                ),
                AppButton(
                  label: "Tải xuống",
                  buttonSize: ButtonSize.SIZE_24,
                  onTap: () => controller
                      .captureFromWidget(
                    ExportSaleInvoiceScreen(
                      total: cubit.state.totalPrice,
                      saleInvoice: cubit.state.request,
                      discount: cubit.state.totalDiscount,
                    ),
                  )
                      .then((bytes) async {
                    // var path = await getApplicationDocumentsDirectory();
                    Gal.putImageBytes(bytes).then((value) => context.pop());
                    // logError(path.path);
                    // // GallerySaver.saveImage(path)
                    // var name = UuidV4().generate();
                    // final file = File("$path/$name");
                    // file.writeAsBytesSync(bytes);
                    // logError(file.readAsBytes());
                  }),
                  buttonType: ButtonType.OUTLINE,
                ),
              ],
            ),
          ),
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
