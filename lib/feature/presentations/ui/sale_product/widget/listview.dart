import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/state/state.dart';
import 'package:mercury/feature/presentations/ui/sale_product/widget/detail_product_card.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

class ListDetailProduct extends StatelessWidget {
  const ListDetailProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return _container(
      BlocBuilder<ProductCubit, ProductCubitState>(
        buildWhen: (p, c) => p.dto.detailProducts != c.dto.detailProducts,
        builder: (context, state) =>
            state.comboBoxes.isEmpty ? const EmptyWidget() : _listCard(state),
      ),
    );
  }

  Column _listCard(ProductCubitState state) {
    return Column(
      children: state.dto.detailProducts!
          .map((e) => DetailProductCard(
                comboBox: e,
                onTapRemove: (val) {},
              ))
          .toList(),
    );
  }

  Container _container(Widget child) {
    return Container(
      width: double.infinity,
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        color: AppColor.grey2,
        borderRadius: AppContainerBorder.radius8,
      ),
      child: child,
    );
  }
}
