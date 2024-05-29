import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';
import 'package:searchfield/searchfield.dart';

class ProductField extends StatelessWidget {
  const ProductField({super.key, this.prosuctSelcted, this.onTap});
  final List<ComboBox>? prosuctSelcted;
  final Function(SearchFieldListItem<ComboBox>)? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
        buildWhen: (previous, current) => previous.products != current.products,
        builder: (context, state) {
          // Khong hien thi cac san pham da chon
          var allProducts = List<ComboBox>.from(state.products);
          allProducts.removeWhere((e) =>
              (prosuctSelcted ?? []).any((selected) => e.id == selected.id));
          return ColumnInput(
            isRequied: true,
            titleLabel: "Sản phẩm",
            bottomWidget: AppSearchFiled(
              onTap: onTap,
              items: allProducts,
              hint: "Chọn sản phẩm",
              appItemFields: AppItemField.comboBox,
            ),
          );
        });
  }
}
