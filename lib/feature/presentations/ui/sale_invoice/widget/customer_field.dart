import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';

import '../../../../domain/model/combo_box/combo_box.dart';
import '../../../widget/column_input/column_input.dart';
import '../../../widget/search_field/search_field.dart';
import '../../../widget/search_field/search_item.dart';

class CustomerField extends StatelessWidget {
  const CustomerField({super.key, this.initValue});
  final String? initValue;

  @override
  Widget build(BuildContext context) {
    return ColumnInput(
      titleLabel: "Tích điểm",
      bottomWidget: Row(
        children: [
          Expanded(
            child: BlocBuilder<ComboBoxCubit, ComboBoxState>(
              buildWhen: (previous, current) =>
                  previous.customer != current.customer,
              builder: (context, state) {
                return AppSearchFiled<ComboBox>(
                  items: state.customer,
                  initValue: initValue,
                  hint: "Chọn khách hàng",
                  appItemFields: AppItemField.comboBox,
                );
              },
            ),
          ),
          const CreateSquareButton(),
        ],
      ),
    );
  }
}
