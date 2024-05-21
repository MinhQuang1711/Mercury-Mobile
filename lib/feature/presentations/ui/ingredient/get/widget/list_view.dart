import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/ui/ingredient/detail/detail.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/widget/card.dart';

import '../../../../bloc/ingredient/cubit/get/cubit.dart';
import '../../../../bloc/ingredient/cubit/get/state/state.dart';
import '../../../../widget/list_view/list_view.dart';
import '../view/bottom_sheet.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    void onTapMoreButton(Ingredient ingredient) {
      context.showBottomSheetAndListen(
        child: IngredietnBottomSheet(ingredient: ingredient),
      );
    }

    return Expanded(
      child: BlocBuilder<GetIngredientCubit, GetIngredientState>(
        builder: (context, state) {
          return AppListView(
            items: state.list,
            child: ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) => IngredientCard(
                ingredient: state.list[index],
                onTapMoreButton: onTapMoreButton,
                onTap: (val) => context.showDialogAndListen(
                    child: DetailIngredientScreen(ingredient: val)),
              ),
            ),
          );
        },
      ),
    );
  }
}
