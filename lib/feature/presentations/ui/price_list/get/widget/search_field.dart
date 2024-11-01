import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/event/event.dart';
import 'package:mercury/feature/presentations/ui/price_list/get/price_list.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/router/path.dart';
import '../../../../../../config/theme/color.dart';
import '../../../../widget/button/create_square_button.dart';
import '../../../../widget/textfield/textfield.dart';

class PriceListSearchField extends StatelessWidget {
  const PriceListSearchField({super.key, this.bloc});
  final PriceListBloc? bloc;
  @override
  Widget build(BuildContext context) {
    void onChanged(String? val) {
      bloc?.add(PriceListEvent.get(SearchByName(name: val?.trim())));
    }

    void onTapDelete() {
      bloc?.add(defultPriceListEvent);
    }

    return Padding(
      padding: AppPadding.padding16,
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
              debounce: true,
              canDelete: true,
              onChanged: onChanged,
              prefWidget: _searchIcon(),
              onTapClearButton: onTapDelete,
              hintText: 'Tìm kiếm bảng giá',
            ),
          ),
          const SizedBox(width: 10),
          CreateSquareButton(
            onTap: () => context.push(AppPath.createPriceList),
          ),
        ],
      ),
    );
  }

  Icon _searchIcon() {
    return const Icon(
      Icons.search,
      color: AppColor.blue,
    );
  }
}
