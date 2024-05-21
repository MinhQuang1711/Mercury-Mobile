import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import '../../../../bloc/ingredient/bloc/bloc.dart';
import '../../../../bloc/ingredient/bloc/event/event.dart';
import '../../../../bloc/ingredient/cubit/create/cubit.dart';

class UpdateIngredientButton extends StatelessWidget {
  const UpdateIngredientButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        final bloc = context.read<IngredientBloc>();
        final cubit = context.read<CreateIngredientCubit>();
        bloc.add(IngredientEvent.update(dto: cubit.state.dto));
      }
    }

    var submitButton = AppButton(label: "Xác nhận", onTap: onTap);

    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<IngredientBloc, IngredientState>(
        builder: (context, state) => state.maybeMap(
          orElse: () => submitButton,
          loading: (value) =>
              submitButton.copyWith(isLoading: true, onTap: () {}),
        ),
      ),
    );
  }
}
