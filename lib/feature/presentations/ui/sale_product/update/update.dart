import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_product/update/widget/update_button.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/update_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../data/model/product/product.dart';
import '../../../../domain/model/combo_box/combo_box.dart';
import '../create/widget/add_detail_button.dart';
import '../create/widget/image_field.dart';
import '../widget/info_title.dart';
import '../widget/listview.dart';
import '../widget/name_field.dart';
import '../widget/price_field.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt.get<ProductCubit>()..initDto(product)),
        BlocProvider(create: (_) => getIt.get<ProductBloc>()),
        BlocProvider(
            create: (_) => getIt.get<ComboBoxCubit>()..getIngredients()),
      ],
      child: const UpdateProductPage(),
    );
  }
}

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<ProductCubit>();
    void onTapRemove(ComboBox val) {
      final initList = context.read<ComboBoxCubit>().state.ingredient;
      cubit.removeIngredient(val, initList);
    }

    return Scaffold(
      appBar: _appBar(context),
      body: _buildBody(cubit, formKey, onTapRemove),
    );
  }

  AppStack _buildBody(
    ProductCubit cubit,
    GlobalKey<FormState> formKey,
    void Function(ComboBox val) onTapRemove,
  ) {
    return AppStack(
      formKey: formKey,
      backgroundWidget: Column(
        children: [
          const ProductImageField(),
          const ProductInfoTitle(),
          ProductNameField(initValue: cubit.state.dto.name),
          ProductPriceField(initValue: cubit.state.dto.price?.formatDouble()),
          const SizedBox(height: 25),
          const AddDetailButton(),
          const SizedBox(height: 15),
          _ingredientList(cubit, onTapRemove),
        ],
      ),
      bottomWidget: UpdateProductButton(formKey: formKey),
    );
  }

  BlocListener<ComboBoxCubit, ComboBoxState> _ingredientList(
      ProductCubit cubit, void Function(ComboBox val) onTapRemove) {
    return BlocListener<ComboBoxCubit, ComboBoxState>(
      listenWhen: (previous, current) =>
          previous.ingredient != current.ingredient,
      listener: (context, state) {
        if (state.ingredient.isNotEmpty) {
          cubit
            ..initComboBoxes(state.ingredient)
            ..initDetailProduct();
        }
      },
      child: ListDetailProduct(
        onTapRemove: onTapRemove,
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
        UpdateScreen().getTitle(),
        style: h6Bold.copyWith(color: AppColor.white),
      ),
    );
  }
}
