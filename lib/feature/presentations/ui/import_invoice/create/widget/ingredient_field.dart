import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/state/state.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import '../../../../../domain/model/combo_box/combo_box.dart';
import '../view/select_ingredient_dialog.dart';

class AddIngredientButton extends StatelessWidget {
  const AddIngredientButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonImportInvoiceCubit>();
    void onTap(List<ComboBox> ingredients) async {
      var val = await context.showAppDialog<ComboBox>(
        child: SelectIngredientDialog(
          ingredients: ingredients,
        ),
      );
      if (val != null) {
        cubit.addIngredient(val);
      }
    }

    return SizedBox(
      width: double.infinity,
      child: BlocBuilder<ComboBoxCubit, ComboBoxState>(
        buildWhen: (previous, current) =>
            previous.ingredient != current.ingredient,
        builder: (context, comboBoxState) {
          return BlocBuilder<CommonImportInvoiceCubit,
              CommonImportInvoiceState>(
            buildWhen: (p, c) =>
                p.request.detailSaleInvoice != c.request.detailSaleInvoice,
            builder: (context, state) {
              final ingredients = List<ComboBox>.from(comboBoxState.ingredient);
              final ingredientSelected = state.request.detailSaleInvoice ?? [];
              // Xoa tat ca ca nguyen lieu da chon
              ingredients.removeWhere(
                  (e) => ingredientSelected.any((e2) => e.id == e2.id));
              return AppButton(
                onTap: () => onTap(ingredients),
                label: "Thêm mã nguyên liệu",
                textColor: AppColor.blueShade3,
                backgroundColor: AppColor.blue.withOpacity(0.2),
                sufWidget: const Icon(
                  Icons.add,
                  color: AppColor.blueShade3,
                ),
              );
            },
          );
        },
      ),
    );
  }
}
