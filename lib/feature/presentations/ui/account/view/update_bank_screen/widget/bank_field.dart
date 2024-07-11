import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/singleton/user_singleton.dart';
import 'package:mercury/feature/data/model/bank/bank.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/state/state.dart';
import 'package:select_button_package/model/search_item.dart';

import '../../../../../widget/column_input/column_input.dart';
import '../../../../../widget/select_button/app_search_item.dart';
import '../../../../../widget/select_button/select_button.dart';

class BankField extends StatelessWidget {
  const BankField({super.key, this.onTap});
  final Function(SearchItem<Bank>)? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UpdateBankCubit, UpdateBankState>(
      buildWhen: (p, c) => p.banks != c.banks,
      builder: (context, state) {
        return ColumnInput(
          titleLabel: "Ngân hàng",
          bottomWidget: AppSelectButton<Bank>(
            items: state.banks,
            title: "Chọn ngân hàng",
            onTap: onTap ?? (val) {},
            searchHint: "Tìm kiếm theo tên",
            appSearchItem: AppSearchItem.bank,
            hintText: "Chọn ngân hàng thụ hưởng",
            init: UserSingleton.instance.user?.bankShortName,
          ),
        );
      },
    );
  }
}
