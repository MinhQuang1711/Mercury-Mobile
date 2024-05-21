import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/card.dart';
import 'package:mercury/feature/presentations/widget/list_view/list_view.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetProductCubit, GetProductState>(
        buildWhen: (previous, current) => previous.list != current.list,
        builder: (context, state) => AppListView(
          items: state.list,
          child: ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (context, index) => SaleProductCard(
              product: state.list[index],
            ),
          ),
        ),
      ),
    );
  }
}
