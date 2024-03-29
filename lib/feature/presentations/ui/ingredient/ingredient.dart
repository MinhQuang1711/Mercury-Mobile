import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/list_view.dart';

import '../../../../core/utils/injection/get_it.dart';
import '../../../data/model/ingredinent/ingredient.dart';
import '../../../data/model/paged_list/paged_list.dart';
import 'widget/search_bar.dart';

class IngredientScreen extends StatelessWidget {
  const IngredientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt.get<IngredientBloc>()
              ..add(const IngredientEvent.get(searchByName: SearchByName()))),
        BlocProvider(create: (_) => getIt.get<GetIngredientCubit>())
      ],
      child: const IngredientPage(),
    );
  }
}

class IngredientPage extends StatelessWidget {
  const IngredientPage({super.key});

  @override
  Widget build(BuildContext context) {
    void handleGot(SearchByName searchByName, PagedList<Ingredient> pagedList) {
      context
          .read<GetIngredientCubit>()
          .handleList(searchByName: searchByName, pagedList: pagedList);
    }

    bool listenWhen(IngredientState previous, IngredientState current) {
      return previous.whenOrNull(got: (searchByName, pagedList) => pagedList) !=
          current.whenOrNull(got: (searchByName, pagedList) => pagedList);
    }

    return BlocListener<IngredientBloc, IngredientState>(
      listenWhen: listenWhen,
      listener: (context, state) => state.whenOrNull(
        got: handleGot,
      ),
      child: const Column(
        children: [
          IngredientSearchBar(),
          // SizedBox(height: 10),
          IngredientList(),
        ],
      ),
    );
  }
}
