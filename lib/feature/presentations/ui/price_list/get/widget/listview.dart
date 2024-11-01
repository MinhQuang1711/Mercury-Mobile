import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../bloc/price_list/cubit/get/cubit.dart';
import '../../../../bloc/price_list/cubit/get/state/state.dart';
import '../../../../widget/list_view/list_view.dart';
import 'card.dart';

class ListPrice extends StatelessWidget {
  const ListPrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetPriceListCubit, GetPriceListState>(
        buildWhen: (p, c) => !p.list.equals(c.list),
        builder: (context, state) => AppListView(
          items: state.list,
          child: ListView.builder(
            itemCount: state.list.length,
            itemBuilder: (context, index) => PriceListCard(
              priceList: state.list[index],
            ),
          ),
        ),
      ),
    );
  }
}
