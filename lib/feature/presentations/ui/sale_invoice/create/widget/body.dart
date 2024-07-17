import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/ui/customer/create/create.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/create/widget/price_list.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/widget/shipping_fee.dart';
import 'package:select_button_package/model/search_item.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../widget/column_input/column_input.dart';
import '../../../../widget/grey_container.dart';
import '../../../../widget/textfield/textfield.dart';
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
    void selectProduct(SearchItem<ComboBox> val) {
      cubit.selectDelailSaleInvoice(val.item);
    }

    void selectCustomer(SearchItem<ComboBox> val) {
      cubit.selectCustomer(val.item.id);
    }

    void onTapCreate() {
      context.showDialogAndListen(
        child: const CreateCustomerScreen(),
        handleWhenHasValue: () => context.read<ComboBoxCubit>().getCustomer(),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const PriceListField(),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 14),
          child: Divider(),
        ),
        ProductField(onTap: selectProduct),
        const SizedBox(height: 10),
        const ProductsSelected(),
        const SizedBox(height: 10),
        const VoucherField(),
        const SizedBox(height: 10),
        CustomerField(
          onTap: selectCustomer,
          onTapCreate: onTapCreate,
        ),
        const SizedBox(height: 10),
        ColumnInput(
          titleLabel: "Phí vận chuyển",
          bottomWidget: AppTextField(
            initValue: "0",
            validator: Validator.doubleOrNull,
            hintText: "Nhập phí vận chuyển",
            onChanged: cubit.changedShippingFee,
            sufWidget: const Icon(
              Icons.attach_money,
              color: AppColor.blue,
            ),
          ),
        ),
        _titleWithPadding("Thông tin hóa đơn"),
        const GreyContainer(
          child: Padding(
            padding: AppPadding.padding12,
            child: Column(
              children: [
                PriceOfProduct(),
                TotalDiscount(),
                ShippingFeeField(),
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
