import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/list_view.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/search_bar.dart';

import 'widget/bloc_listen.dart';

const defaultProductEvent = ProductEvent.get(SearchByName());

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
        children: [
          SaleProductSearchBar(),
          SizedBox(height: 10),
          ProductList(),
        ],
      ),
    );
  }
}
