import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/state/state.dart';

class IngredientListen extends StatelessWidget {
  const IngredientListen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<IngredientBloc, IngredientState>(
      listener: (context, state) => state.whenOrNull(
        updated: (msg) => context.pop(msg),
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
