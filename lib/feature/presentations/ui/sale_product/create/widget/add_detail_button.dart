import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

import '../../../../bloc/product/cubit/create_and_update/cubit.dart';
import '../../widget/ingredient_list.dart';
import '../view/dialog_add_detail_product.dart';

class AddDetailButton extends StatelessWidget {
  const AddDetailButton({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    Future<ComboBox?> showAddDetailDialog() async {
      return await context.showAppDialog<ComboBox>(
        title: "Tạo công thức nguyên liệu",
        child: DialogAddDetailProduct(
          comboBoxes: context.read<ProductCubit>().state.comboBoxes,
        ),
      );
    }

    void onTap() async {
      final result = await showAddDetailDialog();
      if (result != null) {
        cubit.addIngredient(result);
      }
    }

    return TitleListIngredientOfProduct(
      onTap: onTap,
    );
  }
}
