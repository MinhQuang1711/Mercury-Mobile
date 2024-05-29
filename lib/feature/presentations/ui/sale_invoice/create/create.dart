import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../widget/factory/screen/create_screen.dart';
import '../widget/customer_field.dart';
import '../widget/final_price.dart';
import '../widget/price_of_product.dart';
import '../widget/product_field.dart';
import '../widget/total_discount.dart';
import '../widget/vourcher_field.dart';
import 'widget/list_product_selected.dart';

class CreateSaleInvoiceScreen extends StatelessWidget {
  const CreateSaleInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<ComboBoxCubit>()..getProducts())
      ],
      child: const CreateSaleInvoicePage(),
    );
  }
}

class CreateSaleInvoicePage extends StatelessWidget {
  const CreateSaleInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: AppStack(
        backgroundWidget: _body(),
        bottomWidget: const AppButton(label: "Xác nhận"),
      ),
    );
  }

  Column _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const ProductField(),
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
                FinalPrice(price: 0),
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

  AppBar _appBar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      leading: GestureDetector(
        onTap: () => context.pop(),
        child: const Icon(
          Icons.arrow_back_sharp,
          color: AppColor.white,
        ),
      ),
      backgroundColor: AppColor.blue,
      title: Text(
        CreateScreen().getTitle(),
        style: h6Bold.copyWith(color: AppColor.white),
      ),
    );
  }
}
