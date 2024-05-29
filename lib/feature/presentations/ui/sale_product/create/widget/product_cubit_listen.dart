import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';

class ProductCubitListen extends StatelessWidget {
  const ProductCubitListen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final productCubit = context.read<ProductCubit>();
    return BlocListener<ComboBoxCubit, ComboBoxState>(
      listener: (context, state) {
        productCubit.initComboBoxes(state.ingredient);
      },
      child: child,
    );
  }
}
