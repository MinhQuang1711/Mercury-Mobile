import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/view/action_button.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/widget/card.dart';
import 'package:mercury/feature/presentations/widget/list_view/list_view.dart';
import 'package:mercury/feature/presentations/widget/listen_scroll_widget.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final _controller = ScrollController();
  late final ProductBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<ProductBloc>();
    super.initState();
  }

  void _loadMore() {
    final cubit = context.read<GetProductCubit>();
    int nextPage = cubit.state.searchByName.pageNumber + 1;
    final dto = cubit.state.searchByName.copyWith(pageNumber: nextPage);
    _bloc.add(ProductEvent.get(dto));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onTapMoreButton(Product product) {
      context.showBottomSheetAndListen(
        child: ProductActionBottom(
          product: product,
          parentContext: context,
        ),
      );
    }

    return Expanded(
      child: BlocBuilder<GetProductCubit, GetProductState>(
        buildWhen: (previous, current) => previous.list != current.list,
        builder: (context, state) => ListenScrollWidget(
          controller: _controller,
          handleScrollEndOfList: _loadMore,
          child: AppListView(
            items: state.list,
            child: ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) => SaleProductCard(
                product: state.list[index],
                onTapMoreButton: onTapMoreButton,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
