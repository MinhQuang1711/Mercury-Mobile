import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../widget/grey_container.dart';
import '../../widget/customer_field.dart';
import '../../widget/final_price.dart';
import '../../widget/price_of_product.dart';
import '../../widget/product_field.dart';
import '../../widget/total_discount.dart';
import '../../widget/vourcher_field.dart';
import 'list_product_selected.dart';

class CreateSaleInvoiceBody extends StatelessWidget {
  const CreateSaleInvoiceBody({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonSaleInvoiceCubit>();
    void selectProduct(SearchFieldListItem<ComboBox> val) {
      if (val.item != null) {
        cubit.selectDelailSaleInvoice(val.item!);
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductField(onTap: selectProduct),
        const SizedBox(height: 10),
        const ProductsSelected(),
        const SizedBox(height: 10),
        const VoucherField(),
        const SizedBox(height: 10),
        const CustomerField(),
        _titleWithPadding("Thông tin hóa đơn"),
        const GreyContainer(
          child: Padding(
            padding: AppPadding.padding12,
            child: Column(
              children: [
                PriceOfProduct(price: 0),
                TotalDiscount(price: 0),
                Divider(),
                FinalPrice(),
              ],
            ),
          ),
        ),
        const SizedBox(height: 100),
      ],
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
