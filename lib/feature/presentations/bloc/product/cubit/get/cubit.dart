import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/product/product_query.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';

import '../../../../../data/model/paged_list/paged_list.dart';
import 'state/state.dart';

class GetProductCubit extends Cubit<GetProductState> {
  GetProductCubit()
      : super(const GetProductState(list: [], searchByName: ProdductQuery()));
  void handleList({
    required ProdductQuery searchByName,
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

  void selectPriceList(ProductBloc bloc, ComboBox? val) {
    var query =
        bloc.state.whenOrNull(got: (searchByName, pagedList) => searchByName);
    query = query?.copyWith(priceListId: val?.id);
    bloc.add(ProductEvent.get(query ?? const ProdductQuery()));
  }
}
