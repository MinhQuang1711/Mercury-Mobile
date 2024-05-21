import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

class DeleteIngredientScreen extends StatelessWidget {
  const DeleteIngredientScreen({super.key, required this.ingredient});
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<IngredientBloc>();
    void handleFaild(String msg) {
      context.pop();
      context.showFailureSnackBar(msg);
    }

    void handleDleetSuccess(String msg) {
      context.pop(msg);
    }

    return BlocListener<IngredientBloc, IngredientState>(
      bloc: bloc,
      listener: (context, state) => state.whenOrNull(
        failure: handleFaild,
        deleted: handleDleetSuccess,
      ),
      child: NotifiDialog(
        content: ingredient.name,
        onTap: () => bloc.add(IngredientEvent.delete(id: ingredient.id)),
      ),
    );
  }
}
