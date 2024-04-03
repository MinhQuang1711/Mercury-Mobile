import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/widget/card.dart';

import '../../../../bloc/ingredient/cubit/get/cubit.dart';
import '../../../../bloc/ingredient/cubit/get/state/state.dart';
import '../../../../widget/list_view/list_view.dart';

class IngredientList extends StatelessWidget {
  const IngredientList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<GetIngredientCubit, GetIngredientState>(
        builder: (context, state) {
          return AppListView(
            items: state.list,
            child: ListView.builder(
              itemCount: state.list.length,
              itemBuilder: (context, index) => IngredientCard(
                ingredient: state.list[index],
                onTap: (val) => context.push(
                  AppPath.detailIngredient,
                  extra: val,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
