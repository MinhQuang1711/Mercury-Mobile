import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/detail_price/detail_price.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/state/state.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

import 'detail_price_card.dart';

class DetailPriceList extends StatelessWidget {
  const DetailPriceList({super.key});
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<PriceListCubit>();
    void onTapRemove(DetailPrice val) => cubit.removeProduct(val);
    return BlocBuilder<PriceListCubit, PriceListState>(
      buildWhen: (p, c) => p.dto.detailPrices != c.dto.detailPrices,
      builder: (context, state) {
        List<DetailPrice> detailPrices = state.dto.detailPrices ?? [];
        return detailPrices.isEmpty
            ? const EmptyWidget()
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: detailPrices
                    .map((e) => DetailPriceCard(
                          e,
                          onTapRemove: onTapRemove,
                        ))
                    .toList(),
              );
      },
    );
  }
}
