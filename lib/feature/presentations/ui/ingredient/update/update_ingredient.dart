import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/ui/ingredient/create/widget/note.dart';
import 'package:mercury/feature/presentations/ui/ingredient/update/widget/update_bottom.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/price_field.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/weight_field.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/text_style.dart';
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
    final cubit = context.read<CreateIngredientCubit>();
    return Scaffold(
      appBar: _appBar(),
      body: AppStack(
        backgroundWidget: Column(
          children: [
            _nameField(cubit),
            const SizedBox(height: 15),
            _costField(cubit),
            const SizedBox(height: 15),
            _weightField(cubit),
            const SizedBox(height: 25),
            const IngredientNote(),
          ],
        ),
        bottomWidget: const UpdateIngredientButton(),
      ),
    );
  }

  IngredientWeightField _weightField(CreateIngredientCubit cubit) {
    return IngredientWeightField(
      onChanged: cubit.changedWeight,
      initValue: cubit.state.dto.weight.formatNumber(),
    );
  }

  IngredientPriceField _costField(CreateIngredientCubit cubit) {
    return IngredientPriceField(
      onChanged: cubit.changedCost,
      initValue: cubit.state.dto.cost.formatNumber(),
    );
  }

  IngredientNameField _nameField(CreateIngredientCubit cubit) {
    return IngredientNameField(
      onChanged: cubit.changedName,
      initValue: cubit.state.dto.name,
    );
  }

  AppBar _appBar() {
    return AppBar(
      centerTitle: true,
      title: Text(
        "Chỉnh sửa",
        style: h6Bold.copyWith(fontSize: 19),
      ),
    );
  }
}
