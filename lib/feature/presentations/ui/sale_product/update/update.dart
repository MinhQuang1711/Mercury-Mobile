import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/update_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../../data/model/product/product.dart';
import '../create/widget/image_field.dart';
import '../widget/info_title.dart';
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
      ],
      child: const UpdateProductPage(),
    );
  }
}

class UpdateProductPage extends StatelessWidget {
  const UpdateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return Scaffold(
      appBar: _appBar(context),
      body: AppStack(
        backgroundWidget: Column(
          children: [
            const ProductImageField(),
            const ProductInfoTitle(),
            ProductNameField(initValue: cubit.state.dto.name),
            ProductPriceField(initValue: cubit.state.dto.price?.formatDouble()),
          ],
        ),
        bottomWidget: const SizedBox(),
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
