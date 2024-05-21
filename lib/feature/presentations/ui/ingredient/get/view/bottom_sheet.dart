import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/ui/ingredient/delete/delete.dart';
import 'package:mercury/feature/presentations/ui/ingredient/get/ingredient.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/const/radius.dart';
import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../widget/bottom_sheet_item.dart';

class IngredietnBottomSheet extends StatelessWidget {
  const IngredietnBottomSheet({
    super.key,
    required this.ingredient,
    required this.parentContext,
  });
  final BuildContext parentContext;
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _title(),
        const SizedBox(height: 10),
        _options(context),
      ],
    );
  }

  Container _options(BuildContext context) {
    return Container(
      margin: AppPadding.padding12,
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        color: AppColor.grey3,
        borderRadius: AppContainerBorder.radius8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _edit(context),
          const Divider(height: 2),
          _delete(context),
        ],
      ),
    );
  }

  BottomSheetItem _delete(BuildContext context) {
    void onTap() {
      context.pop();
      parentContext.showDialogAndListen(
          child: DeleteIngredientScreen(ingredient: ingredient));
    }

    return BottomSheetItem(
      label: "Xóa",
      onTap: onTap,
    );
  }

  BottomSheetItem _edit(BuildContext context) {
    void onTap() {
      context.pop();
      parentContext.pushAndListen(
          object: ingredient,
          location: AppPath.updateIngredient,
          handleWhenHasValue: refreshIngredient);
    }

    return BottomSheetItem(
      onTap: onTap,
      label: "Chỉnh sửa",
      iconData: Icons.settings,
    );
  }

  Text _title() {
    return Text(
      ingredient.name,
      style: h6Bold.copyWith(color: AppColor.blue),
    );
  }

  void refreshIngredient() {
    final bloc = parentContext.read<IngredientBloc>();
    bloc.add(defaultIngredientEvent);
  }
}
