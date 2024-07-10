import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/singleton/invoice_singleton.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/container.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../gen/assets.gen.dart';
import 'button.dart';

class AccountInvoice extends StatelessWidget {
  const AccountInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    var splashCubit = context.read<SplashCubit>();
    void onTabSaleInvoice() {
      splashCubit.changedTab(2);
      if (InvoiceSingleton.instance.controller.index != 0) {
        InvoiceSingleton.instance.controller.animateTo(0);
      }
    }

    void onTabImportInvoice() {
      splashCubit.changedTab(2);
      InvoiceSingleton.instance.controller.animateTo(1);
    }

    return ContainerAccount(
      title: "Hóa đơn",
      child: Row(
        children: [
          AccountButton(
            title: "Đơn bán",
            onTap: onTabSaleInvoice,
            icon: ImageIcon(AssetImage(Assets.icon.invoice.keyName),
                color: AppColor.blue),
          ),
          AccountButton(
            title: "Đơn nhập",
            onTap: onTabImportInvoice,
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
