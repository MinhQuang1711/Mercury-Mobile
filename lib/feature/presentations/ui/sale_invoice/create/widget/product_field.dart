import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_field.dart';
import 'package:mercury/feature/presentations/widget/search_field/search_item.dart';

class ProductField extends StatelessWidget {
  const ProductField({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      buildWhen: (previous, current) => previous.products != current.products,
      builder: (context, state) => ColumnInput(
        isRequied: true,
        titleLabel: "Sản phẩm",
        bottomWidget: AppSearchFiled(
          items: state.products,
          hint: "Chọn sản phẩm",
          appItemFields: AppItemField.comboBox,
        ),
      ),
    );
  }
}
