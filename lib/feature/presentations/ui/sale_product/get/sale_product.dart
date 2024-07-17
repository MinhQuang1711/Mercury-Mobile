import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/product/product_query.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/list_view.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/price_list_button.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/search_bar.dart';

import 'widget/bloc_listen.dart';

const defaultProductEvent = ProductEvent.get(ProdductQuery());

class SaleProductScreen extends StatelessWidget {
  const SaleProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt.get<ProductBloc>()..add(defaultProductEvent),
        ),
        BlocProvider(create: (_) => getIt.get<GetProductCubit>()),
        BlocProvider(create: (_) => getIt.get<ComboBoxCubit>()..getPriceList())
      ],
      child: const SaleProductPage(),
    );
  }
}

class SaleProductPage extends StatelessWidget {
  const SaleProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProductBlocListenWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SaleProductSearchBar(),
          PriceListButton(),
          Divider(thickness: 5),
          SizedBox(height: 12),
          ProductList(),
        ],
      ),
    );
  }
}
