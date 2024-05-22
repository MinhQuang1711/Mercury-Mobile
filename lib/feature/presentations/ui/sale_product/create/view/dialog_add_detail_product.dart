import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';
import 'package:searchfield/searchfield.dart';

class DialogAddDetailProduct extends StatefulWidget {
  const DialogAddDetailProduct({super.key, required this.comboBoxes});
  final List<ComboBox> comboBoxes;

  @override
  State<DialogAddDetailProduct> createState() => _DialogAddDetailProductState();
}

class _DialogAddDetailProductState extends State<DialogAddDetailProduct> {
  ComboBox _detailProduct = const ComboBox();
  void _changedWeight(String? val) {
    final weight = double.tryParse(val ?? "0");
    _detailProduct = _detailProduct.copyWith(value: weight ?? 0);
  }

  void _changedIngredientId(SearchFieldListItem<ComboBox>? val) {
    _detailProduct = _detailProduct.copyWith(id: val?.item?.id);
  }

  void _onSubmit() {
    context.pop(_detailProduct);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding14,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _ingredientField(),
          const SizedBox(height: 15),
          _weightField(),
          const SizedBox(height: 45),
          _submitButton(),
        ],
      ),
    );
  }

  AppButton _submitButton() {
    return AppButton(
      label: "Xác nhận",
      onTap: _onSubmit,
      textColor: AppColor.blue,
      buttonSize: ButtonSize.SIZE_24,
      backgroundColor: AppColor.yellow,
    );
  }

  ColumnInput _weightField() {
    return ColumnInput(
      titleLabel: "Định lượng",
      bottomWidget: AppTextField(
        onChanged: _changedWeight,
        hintText: "Nhập định lượng",
        sufWidget: const Text("| gram"),
        textInputType: TextInputType.number,
      ),
    );
  }

  ColumnInput _ingredientField() {
    return ColumnInput(
      titleLabel: "Nguyên liệu",
      bottomWidget: AppSearchFiled(
        items: widget.comboBoxes,
        hint: "Chọn nguyên liệu",
        onTap: _changedIngredientId,
        appItemFields: AppItemField.comboBox,
      ),
    );
  }
}
