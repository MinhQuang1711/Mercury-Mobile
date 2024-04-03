import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/cubit.dart';
import 'package:mercury/feature/presentations/ui/ingredient/create/widget/create_button.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/ingredient/widget/weight_field.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/create_screen.dart';

import '../../../widget/stack/screen_allway_see_bottom.dart';
import '../widget/price_field.dart';

class CreateIngredientScreen extends StatelessWidget {
  const CreateIngredientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<IngredientBloc>()),
        BlocProvider(create: (_) => getIt.get<CreateIngredientCubit>()),
      ],
      child: const CreateIngredientPage(),
    );
  }
}

class CreateIngredientPage extends StatelessWidget {
  const CreateIngredientPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<CreateIngredientCubit>();
    final factoryScreen = CreateScreen();
    void handleSuccess() {
      context.pop(factoryScreen.getMessage());
    }

    return BlocListener<IngredientBloc, IngredientState>(
      listener: (context, state) => state.whenOrNull(
        created: handleSuccess,
        failure: context.showFailureSnackBar,
      ),
      child: Scaffold(
        backgroundColor: AppColor.white,
        appBar: factoryScreen.createAppBar(context),
        body: AppStack(
          formKey: formKey,
          backgroundWidget: Column(
            children: [
              IngredientNameField(
                onChanged: cubit.changedName,
              ),
              const SizedBox(height: 15),
              IngredientPriceField(
                onChanged: cubit.changedCost,
              ),
              const SizedBox(height: 15),
              const IngredientWeightField(),
              const SizedBox(height: 100),
            ],
          ),
          bottomWidget: CreateIngredientButton(
            formKey: formKey,
            label: factoryScreen.getTitle(),
          ),
        ),
      ),
    );
  }
}
