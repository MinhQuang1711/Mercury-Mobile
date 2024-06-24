import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:select_button_package/model/search_item.dart';

import '../../../../domain/model/combo_box/combo_box.dart';
import '../../../widget/column_input/column_input.dart';

class CustomerField extends StatelessWidget {
  const CustomerField(
      {super.key, this.initValue, required this.onTap, this.onTapCreate});
  final String? initValue;
  final Function()? onTapCreate;
  final Function(SearchItem<ComboBox>) onTap;
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
                return AppSelectButton<ComboBox>(
                  items: state.customer,
                  // initValue: initValue,

                  searchHint: "Tìm kiếm theo số điện thoại",
                  hintText: "Chọn khách hàng", onTap: onTap,
                  appSearchItem: AppSearchItem.customer,
                  // appItemFields: AppItemField.comboBox,
                );
              },
            ),
          ),
          CreateSquareButton(
            onTap: onTapCreate,
          ),
        ],
      ),
    );
  }
}
