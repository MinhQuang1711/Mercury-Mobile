import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/ui/ingredient/detail/detail.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/ingredient.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/widget/card.dart';
import 'package:mercury/feature/presentations/widget/listen_scroll_widget.dart';

import '../../../../bloc/ingredient/cubit/get/cubit.dart';
import '../../../../bloc/ingredient/cubit/get/state/state.dart';
import '../../../../widget/list_view/list_view.dart';
import '../view/bottom_sheet.dart';

class IngredientList extends StatefulWidget {
  const IngredientList({super.key});

  @override
  State<IngredientList> createState() => _IngredientListState();
}

class _IngredientListState extends State<IngredientList> {
  final _controller = ScrollController();
  late final IngredientBloc _bloc;
  @override
  void initState() {
    _bloc = context.read<IngredientBloc>();
    super.initState();
  }

  void _loadMore() {
    final cubit = context.read<GetIngredientCubit>();
    int nextPage = cubit.state.searchByName.pageNumber + 1;
    final dto = cubit.state.searchByName.copyWith(pageNumber: nextPage);
    _bloc.add(IngredientEvent.get(searchByName: dto));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onTapMoreButton(Ingredient ingredient) {
      context.showBottomSheetAndListen(
        child: IngredietnBottomSheet(
          ingredient: ingredient,
          parentContext: context,
        ),
      );
    }

    return Expanded(
      child: BlocBuilder<GetIngredientCubit, GetIngredientState>(
        builder: (context, state) {
          return ListenScrollWidget(
            handleScrollEndOfList: _loadMore,
            controller: _controller,
            child: AppListView(
              items: state.list,
              onRefreshing: () => _bloc.add(defaultIngredientEvent),
              child: ListView.builder(
                controller: _controller,
                itemCount: state.list.length,
                itemBuilder: (context, index) => IngredientCard(
                  ingredient: state.list[index],
                  onTapMoreButton: onTapMoreButton,
                  onTap: (val) => context.showDialogAndListen(
                      child: DetailIngredientScreen(ingredient: val)),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
