import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';

import '../../../../../core/utils/injection/get_it.dart';
import '../../../bloc/ingredient/bloc/bloc.dart';
import '../../../bloc/ingredient/cubit/create/cubit.dart';

class UpdateIngredientScreen extends StatelessWidget {
  const UpdateIngredientScreen({super.key, required this.ingredient});
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<IngredientBloc>()),
        BlocProvider(
            create: (_) =>
                getIt.get<CreateIngredientCubit>()..initDto(ingredient)),
      ],
      child: const UpdateIngredientPage(),
    );
  }
}

class UpdateIngredientPage extends StatelessWidget {
  const UpdateIngredientPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
