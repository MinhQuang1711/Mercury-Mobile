import 'package:flutter/material.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/const/radius.dart';
import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../widget/bottom_sheet_item.dart';

class IngredietnBottomSheet extends StatelessWidget {
  const IngredietnBottomSheet({super.key, required this.ingredient});
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _title(),
        const SizedBox(height: 10),
        _options(),
      ],
    );
  }

  Container _options() {
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
          _edit(),
          const Divider(height: 2),
          _delete(),
        ],
      ),
    );
  }

  BottomSheetItem _delete() {
    return const BottomSheetItem(
      label: "Xóa",
    );
  }

  BottomSheetItem _edit() {
    return const BottomSheetItem(
      iconData: Icons.settings,
      label: "Chỉnh sửa",
    );
  }

  Text _title() {
    return Text(
      ingredient.name,
      style: h6Bold.copyWith(color: AppColor.blue),
    );
  }
}
