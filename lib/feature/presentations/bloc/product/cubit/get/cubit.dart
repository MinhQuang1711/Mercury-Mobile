import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';

import '../../../../../data/model/paged_list/paged_list.dart';
import 'state/state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit()
      : super(const GetProductState(list: [], searchByName: SearchByName()));
  void handleList({
    required SearchByName searchByName,
    required PagedList<Product> pagedList,
  }) {
    final oldList = List<Product>.from(state.list);
    if (searchByName.pageNumber == 1) {
      oldList.clear();
    }
    emit(
      state.copyWith(
        list: oldList..addAll(pagedList.items),
        searchByName: searchByName,
      ),
    );
  }
}
