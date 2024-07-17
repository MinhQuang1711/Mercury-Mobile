import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/product/product_query.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';

import '../../../../../data/model/paged_list/paged_list.dart';
import '../../../../../data/model/product/product.dart';

class ProductBlocListenWidget extends StatelessWidget {
  const ProductBlocListenWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetProductCubit>();
    void handleList(ProdductQuery dto, PagedList<Product> paged) {
      cubit.handleList(searchByName: dto, pagedList: paged);
    }

    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) => state.whenOrNull(
        got: handleList,
      ),
      child: child,
    );
  }
}
