import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/state/state.dart';

class GetIngredientCubit extends Cubit<GetIngredientState> {
  GetIngredientCubit()
      : super(const GetIngredientState(list: [], searchByName: SearchByName()));

  void handleList({
    required SearchByName searchByName,
    required PagedList<Ingredient> pagedList,
  }) {
    final oldList = List<Ingredient>.from(state.list);
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
