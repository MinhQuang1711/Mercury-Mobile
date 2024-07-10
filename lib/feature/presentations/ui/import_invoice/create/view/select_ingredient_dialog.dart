// ignore_for_file: unused_result

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';
import 'package:select_button_package/model/search_item.dart';

class SelectIngredientDialog extends StatelessWidget {
  const SelectIngredientDialog({super.key, required this.ingredients});
  final List<ComboBox> ingredients;

  @override
  Widget build(BuildContext context) {
    ComboBox comboBox = const ComboBox();
    final formKey = GlobalKey<FormState>();

    void onSelectIngredient(SearchItem<ComboBox> val) {
      comboBox = comboBox.copyWith(id: val.item.id, name: val.item.name);
    }

    void onChangedWeight(String? val) {
      final weight = double.tryParse(val ?? "0");
      comboBox = comboBox.copyWith(value: weight);
    }

    void onChangedPrice(String? val) {
      final price = double.tryParse(val ?? "0");
      comboBox = comboBox.copyWith(price: price);
    }

    void onSubmit() {
      if (formKey.currentState?.validate() == true) {
        context.pop(comboBox);
      }
    }

    return Padding(
      padding: AppPadding.padding12,
      child: Form(
        key: formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ColumnInput(
              titleLabel: "Nguyên liệu",
              bottomWidget: AppSelectButton(
                items: ingredients,
                onTap: onSelectIngredient,
                title: "Chọn nguyên liệu",
                hintText: "Chọn nguyên liệu",
                searchHint: "Tìm kiếm nguyên liệu",
                appSearchItem: AppSearchItem.comboBox,
              ),
            ),
            const SizedBox(height: 15),
            ColumnInput(
              isRequied: true,
              titleLabel: "Khối lượng",
              bottomWidget: AppTextField(
                hintText: "Nhập khối lượng",
                sufWidget: const Text("| g"),
                onChanged: onChangedWeight,
                validator: Validator.doubleNotNull,
                textInputType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 15),
            ColumnInput(
              isRequied: true,
              titleLabel: "Thành tiền",
              bottomWidget: AppTextField(
                hintText: "Nhập giá tiền",
                sufWidget: const Text("| VND"),
                onChanged: onChangedPrice,
                validator: Validator.doubleNotNull,
                textInputType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 40),
            AppButton(
              label: "Xác nhận",
              onTap: onSubmit,
              buttonSize: ButtonSize.SIZE_24,
            )
          ],
        ),
      ),
    );
  }
}
