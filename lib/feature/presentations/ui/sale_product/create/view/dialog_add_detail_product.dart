import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/validator/validator.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';
import 'package:select_button_package/model/search_item.dart';

class DialogAddDetailProduct extends StatefulWidget {
  const DialogAddDetailProduct({super.key, required this.comboBoxes});
  final List<ComboBox> comboBoxes;

  @override
  State<DialogAddDetailProduct> createState() => _DialogAddDetailProductState();
}

class _DialogAddDetailProductState extends State<DialogAddDetailProduct> {
  ComboBox _detailProduct = const ComboBox();
  final _formKey = GlobalKey<FormState>();
  void _changedWeight(String? val) {
    final weight = double.tryParse(val ?? "0");
    _detailProduct = _detailProduct.copyWith(value: weight ?? 0);
  }

  void _changedIngredientId(SearchItem<ComboBox> val) {
    _detailProduct = _detailProduct.copyWith(
      id: val.item.id,
      name: val.item.name,
      price: val.item.price,
    );
  }

  void _onSubmit() {
    if (_formKey.currentState?.validate() == true) {
      context.pop(_detailProduct);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding14,
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _ingredientField(),
            const SizedBox(height: 15),
            _weightField(),
            const SizedBox(height: 45),
            _submitButton(),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  AppButton _submitButton() {
    return AppButton(
      label: "Xác nhận",
      onTap: _onSubmit,
      textColor: AppColor.white,
      buttonSize: ButtonSize.SIZE_24,
      backgroundColor: AppColor.blue,
    );
  }

  ColumnInput _weightField() {
    return ColumnInput(
      titleLabel: "Định lượng",
      bottomWidget: AppTextField(
        onChanged: _changedWeight,
        hintText: "Nhập định lượng",
        sufWidget: const Text("| gram"),
        validator: Validator.doubleNotNull,
      ),
    );
  }

  ColumnInput _ingredientField() {
    return ColumnInput(
      titleLabel: "Nguyên liệu",
      bottomWidget: AppSelectButton(
        items: widget.comboBoxes,
        onTap: _changedIngredientId,
        hintText: "Chọn nguyên liệu",
        searchHint: "Tìm kiếm nguyên liệu",
        title: "Chọn nguyên liệu",
        appSearchItem: AppSearchItem.comboBox,
      ),
    );
  }
}
