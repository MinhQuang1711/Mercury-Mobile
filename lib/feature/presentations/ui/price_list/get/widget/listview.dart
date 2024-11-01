import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/event/event.dart';
import 'package:mercury/feature/presentations/ui/price_list/get/price_list.dart';
import 'package:mercury/feature/presentations/widget/listen_scroll_widget.dart';

import '../../../../bloc/price_list/cubit/get/cubit.dart';
import '../../../../bloc/price_list/cubit/get/state/state.dart';
import '../../../../widget/list_view/list_view.dart';
import 'card.dart';

class ListPrice extends StatefulWidget {
  const ListPrice({super.key, this.cubit, this.bloc});
  final GetPriceListCubit? cubit;
  final PriceListBloc? bloc;

  @override
  State<ListPrice> createState() => _ListPriceState();
}

class _ListPriceState extends State<ListPrice> {
  final _scrollCtrl = ScrollController();

  void _loadMore() {
    if (widget.cubit != null) {
      var dto = widget.cubit!.state.dto;
      int nextPage = dto.pageNumber + 1;
      dto = dto.copyWith(pageNumber: nextPage);
      widget.bloc?.add(PriceListEvent.get(dto));
    }
  }

  void _refresh() {
    widget.bloc?.add(defultPriceListEvent);
  }

  @override
  void dispose() {
    _scrollCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetPriceListCubit, GetPriceListState>(
        buildWhen: (p, c) => !p.list.equals(c.list),
        builder: (context, state) => ListenScrollWidget(
          controller: _scrollCtrl,
          handleScrollEndOfList: _loadMore,
          child: AppListView(
            items: state.list,
            onRefreshing: _refresh,
            child: ListView.builder(
              controller: _scrollCtrl,
              itemCount: state.list.length,
              itemBuilder: (context, index) => PriceListCard(
                priceList: state.list[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
