import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/data/model/paged_list/paged_list.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/state/state.dart';

class GetIngredientCubit extends Cubit<GetIngredientState> {
  GetIngredientCubit()
      : super(GetIngredientState(
            list: mockIngredients, searchByName: const SearchByName()));

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

var mockIngredients = [
  const Ingredient(id: "id", name: "Mango", cost: 250, weight: 1000),
  const Ingredient(id: "id", name: "Melon", cost: 265, weight: 1000),
  const Ingredient(id: "id", name: "Jasmine tea", cost: 155, weight: 1000),
  const Ingredient(id: "id", name: "Suger", cost: 50, weight: 2000),
  const Ingredient(id: "id", name: "Fresh milk", cost: 250, weight: 1000),
  const Ingredient(id: "id", name: "Arabica", cost: 265, weight: 1000),
  const Ingredient(id: "id", name: "Black tea", cost: 155, weight: 1000),
  const Ingredient(id: "id", name: "Berry", cost: 50, weight: 2000),
];
