import 'package:flutter/material.dart';

import '../../../../../../domain/model/combo_box/combo_box.dart';
import '../../../../../widget/column_input/column_input.dart';
import '../../../../../widget/select_button/app_search_item.dart';
import '../../../../../widget/select_button/select_button.dart';

class BankField extends StatelessWidget {
  const BankField({super.key});

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Ngân hàng",
      bottomWidget: AppSelectButton<ComboBox>(
        items: const [],
        onTap: (val) {},
        hintText: "Chọn ngân hàng thụ hưởng",
        appSearchItem: AppSearchItem.comboBox,
      ),
    );
  }
}
