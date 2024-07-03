import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/ui/voucher/create/create.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../../gen/assets.gen.dart';
import '../../../bloc/global_cubit/cubit.dart';

class CreateInvoiceRow extends StatelessWidget {
  const CreateInvoiceRow({super.key});

  @override
  Widget build(BuildContext context) {
    void createSaleInovice() {
      context.pushAndListen(
        location: AppPath.createSaleInvoice,
        handleWhenHasValue: () {
          final glocalCubit = context.read<GlobalCubit>();
          glocalCubit.changedReloadDashboard();
          glocalCubit.changedReloadSaleInvoice();
        },
      );
    }

    void createImportInvoice() {
      context.pushAndListen(
        location: AppPath.createImportInvoice,
        handleWhenHasValue: () {
          final glocalCubit = context.read<GlobalCubit>();
          glocalCubit.changedReloadDashboard();
          glocalCubit.changedReloadImportInvoice();
        },
      );
    }

    void createVoucher() {
      context.showDialogAndListen(child: const CreateVoucherScreen());
    }

    void createCustomer() {
      context.pushAndListen(location: AppPath.createCustomer);
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _button(
          label: "Phiếu giảm",
          onTap: createVoucher,
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
          onTap: createCustomer,
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
    return Expanded(
      child: GestureDetector(
        behavior: HitTestBehavior.translucent,
        onTap: onTap,
        child: Column(
          children: [
            ImageIcon(
              AssetImage(assetGenImage.keyName),
              color: const Color.fromARGB(255, 23, 100, 208),
              size: 30,
            ),
            const SizedBox(height: 10),
            Text(
              label,
              textAlign: TextAlign.center,
              overflow: TextOverflow.visible,
              style: captionRegular.copyWith(color: AppColor.grey5),
            )
          ],
        ),
      ),
    );
  }
}
