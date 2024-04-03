import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateIngredientButton extends StatelessWidget {
  const CreateIngredientButton(
      {super.key, required this.label, required this.formKey});
  final String label;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        final bloc = context.read<IngredientBloc>();
        final cubit = context.read<CreateIngredientCubit>();
        bloc.add(IngredientEvent.create(dto: cubit.state.dto));
      }
    }

    final createButton = AppButton(label: label, onTap: onTap);

    return BlocBuilder<IngredientBloc, IngredientState>(
      builder: (context, state) {
        return state.maybeWhen(
            orElse: () => createButton,
            loading: () =>
                createButton.coppyWith(isLoading: true, onTap: () {}));
      },
    );
  }
}
