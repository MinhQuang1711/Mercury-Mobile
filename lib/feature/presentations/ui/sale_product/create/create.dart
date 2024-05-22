import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/price_field.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../widget/info_title.dart';
import '../widget/listview.dart';
import 'widget/add_detail_button.dart';
import 'widget/create_button.dart';
import 'widget/image_field.dart';
import 'widget/product_bloc_listen.dart';
import 'widget/product_cubit_listen.dart';

class CreateProductScreen extends StatelessWidget {
  const CreateProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<ProductBloc>()),
        BlocProvider(create: (_) => getIt.get<ProductCubit>()),
        BlocProvider(
            create: (_) => getIt.get<ComboBoxCubit>()..getIngredients()),
      ],
      child: const CreateProductPage(),
    );
  }
}

class CreateProductPage extends StatelessWidget {
  const CreateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<ProductCubit>();
    void onTapRemove(ComboBox val) {
      final initList = context.read<ComboBoxCubit>().state.comboBoxes;
      cubit.removeIngredient(val, initList);
    }

    return Scaffold(
      appBar: _appBar(context),
      body: ProductBlocListen(
        child: ProductCubitListen(
          child: AppStack(
            formKey: formKey,
            backgroundWidget: _formInput(onTapRemove, cubit),
            bottomWidget: CreateProductButton(formKey: formKey),
          ),
        ),
      ),
    );
  }

  Column _formInput(Function(ComboBox)? onTapRemove, ProductCubit cubit) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        const ProductImageField(),
        const ProductInfoTitle(),
        ProductNameField(onChanged: cubit.changedName),
        ProductPriceField(onChanged: cubit.changedPrice),
        const SizedBox(height: 25),
        const AddDetailButton(),
        const SizedBox(height: 15),
        ListDetailProduct(onTapRemove: onTapRemove),
        const SizedBox(height: 100),
      ],
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
