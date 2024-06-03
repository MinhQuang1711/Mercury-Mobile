import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/state/state.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';

import 'card.dart';

class IngredientSelected extends StatelessWidget {
  const IngredientSelected({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonImportInvoiceCubit>();
    return BlocBuilder<CommonImportInvoiceCubit, CommonImportInvoiceState>(
      buildWhen: (previous, current) =>
          previous.request.ingredients != current.request.ingredients,
      builder: (context, state) {
        var list = state.request.ingredients ?? [];
        return GreyContainer(
          child: list.isEmpty
              ? const EmptyWidget()
              : Column(
                  children: list
                      .map((e) => IngredientCard(
                            comboBox: e,
                            onTapRemove: cubit.removeIngredient,
                          ))
                      .toList()),
        );
      },
    );
  }
}
