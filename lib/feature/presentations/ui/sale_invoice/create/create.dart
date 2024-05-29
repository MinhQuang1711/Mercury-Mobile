import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_invoice/create/widget/body.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../widget/factory/screen/create_screen.dart';

class CreateSaleInvoiceScreen extends StatelessWidget {
  const CreateSaleInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<CommonSaleInvoiceCubit>()),
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
      body: const AppStack(
        backgroundWidget: CreateSaleInvoiceBody(),
        bottomWidget: AppButton(label: "Xác nhận"),
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
