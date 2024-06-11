import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/detail/widget/product_selected.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/detail/widget/user_field.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/const/padding.dart';
import '../../../widget/grey_container.dart';
import '../widget/final_price.dart';
import '../widget/price_of_product.dart';
import '../widget/total_discount.dart';
import 'print_invoice_button.dart';
import 'widget/voucher_field.dart';

class DetailSaleInvoiceScreen extends StatelessWidget {
  const DetailSaleInvoiceScreen({super.key, required this.saleInvoice});
  final SaleInvoice saleInvoice;

  @override
  Widget build(BuildContext context) {
    final totalPrice = saleInvoice.totalPrice ?? 0;
    final totalDiscount = saleInvoice.dicount ?? 0;
    final finalPrice = totalPrice - totalDiscount;
    return BlocProvider(
      create: (context) => getIt.get<CommonSaleInvoiceCubit>(),
      child: Scaffold(
        appBar: _appBar(context),
        body: AppStack(
          bottomWidget: Row(
            children: [
              SaveInvoiceButton(
                total: totalPrice,
                discount: totalDiscount,
                saleInvoice: saleInvoice,
              ),
              const SizedBox(width: 10),
              AppButton(
                label: "Cancel",
                onTap: () => context.pop(),
              ),
            ],
          ),
          backgroundWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _titleWithPadding("Sản phẩm"),
              ProductSelected(
                detailInvoices: saleInvoice.detailSaleInvoices ?? [],
              ),
              const SizedBox(height: 10),
              const VoucherField(),
              const SizedBox(height: 10),
              const UserField(),
              _titleWithPadding("Thông tin hóa đơn"),
              GreyContainer(
                child: Padding(
                  padding: AppPadding.padding12,
                  child: Column(
                    children: [
                      PriceOfProduct(price: totalPrice),
                      TotalDiscount(price: totalDiscount),
                      const Divider(),
                      FinalPrice(
                        initPrice: finalPrice,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: GestureDetector(
        onTap: context.pop,
        child: const Icon(
          Icons.arrow_back,
          color: AppColor.white,
        ),
      ),
      centerTitle: true,
      backgroundColor: AppColor.blue,
      title: Column(
        children: [
          Text(
            "Chi tiết",
            style: captionMedium.copyWith(color: AppColor.white),
          ),
          Text(
            saleInvoice.id ?? "",
            style: captionBold.copyWith(color: AppColor.white),
          ),
        ],
      ),
    );
  }

  Padding _titleWithPadding(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        title,
        style: bodyMedium,
      ),
    );
  }
}
