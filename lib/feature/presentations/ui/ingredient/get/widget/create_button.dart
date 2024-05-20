import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/ingredient.dart';

class CreateIngredientButton extends StatelessWidget {
  const CreateIngredientButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onCreate() {
      final bloc = context.read<IngredientBloc>();
      context.pushAndListen(
        location: AppPath.createIngredient,
        handleWhenHasValue: () => bloc.add(defaultIngredientEvent),
      );
    }

    return GestureDetector(
      onTap: onCreate,
      child: const Icon(
        Icons.add_box_rounded,
        color: AppColor.blue,
        size: 25,
      ),
    );
  }
}
