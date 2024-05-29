import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';

import '../../../../../domain/model/combo_box/combo_box.dart';
import '../../../../widget/column_input/column_input.dart';
import '../../../../widget/search_field/search_field.dart';
import '../../../../widget/search_field/search_item.dart';

class CustomerField extends StatelessWidget {
  const CustomerField({super.key});

  @override
  Widget build(BuildContext context) {
    return const ColumnInput(
      titleLabel: "Tích điểm",
      bottomWidget: Row(
        children: [
          Expanded(
            child: AppSearchFiled<ComboBox>(
              items: [],
              hint: "Chọn khách hàng",
              appItemFields: AppItemField.comboBox,
            ),
          ),
          CreateSquareButton(),
        ],
      ),
    );
  }
}
