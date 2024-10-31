import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/price_list/price_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/get/state/state.dart';

import '../../../../../data/model/paged_list/paged_list.dart';

class GetPriceListCubit extends Cubit<GetPriceListState> {
  GetPriceListCubit()
      : super(const GetPriceListState(dto: SearchByName(), list: []));

  void handleList({
    required SearchByName dto,
    required PagedList<PriceList> pagedList,
  }) {
    final oldList = List<PriceList>.from(state.list);
    if (dto.pageNumber == 1) {
      oldList.clear();
    }
    emit(
      state.copyWith(
        list: oldList..addAll(pagedList.items),
        dto: dto,
      ),
    );
  }
}
