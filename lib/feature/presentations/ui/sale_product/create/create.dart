import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/price_field.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../widget/info_title.dart';
import 'widget/add_detail_button.dart';
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
    return Scaffold(
      appBar: _appBar(),
      body: const ProductCubitListen(
        child: AppStack(
          backgroundWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProductInfoTitle(),
              SizedBox(height: 15),
              ProductNameField(),
              SizedBox(height: 15),
              ProductPriceField(),
              SizedBox(height: 25),
              AddDetailButton(),
              SizedBox(height: 15),
            ],
          ),
          bottomWidget: SizedBox(),
        ),
      ),
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        CreateScreen().getTitle(),
        style: h6Bold,
      ),
    );
  }
}
