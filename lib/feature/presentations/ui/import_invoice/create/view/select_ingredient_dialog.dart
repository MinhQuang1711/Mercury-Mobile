import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class SelectIngredientDialog extends StatelessWidget {
  const SelectIngredientDialog({super.key, required this.ingredients});
  final List<ComboBox> ingredients;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ColumnInput(
            titleLabel: "Nguyên liệu",
            bottomWidget: AppSearchFiled(
              items: ingredients,
              hint: "Chọn nguyên liệu",
              appItemFields: AppItemField.comboBox,
            ),
          ),
          const SizedBox(height: 15),
          const ColumnInput(
            titleLabel: "Khối lượng",
            bottomWidget: AppTextField(
              hintText: "Nhập khối lượng",
              sufWidget: Text("| g"),
              textInputType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 15),
          const ColumnInput(
            titleLabel: "Thành tiền",
            bottomWidget: AppTextField(
              hintText: "Nhập giá tiền",
              sufWidget: Text("| VND"),
              textInputType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 40),
          const AppButton(
            label: "Xác nhận",
            buttonSize: ButtonSize.SIZE_24,
          )
        ],
      ),
    );
  }
}
