import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/ingredient/cubit/get/cubit.dart';
import '../../../bloc/ingredient/cubit/get/state/state.dart';
import '../../../widget/list_view/list_view.dart';

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
              itemBuilder: (context, index) => Text(state.list[index].name),
            ),
          );
        },
      ),
    );
  }
}
