import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

import 'create_product_button.dart';

class SaleProductSearchBar extends StatelessWidget {
  const SaleProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProductBloc>();
    void search({String? val}) {
      var searchDto = SearchByName(name: val?.trim());
      bloc.add(ProductEvent.get(searchDto));
    }

    void onChanged(String? val) {
      search(val: val);
    }

    void onClear() {
      search();
    }

    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0, bottom: 0),
      child: SizedBox(
        width: double.infinity,
        child: AppTextField(
          canDelete: true,
          onChanged: onChanged,
          onTapClearButton: onClear,
          prefWidget: const SearchIcon(),
          sufWidget: const CreateProductButton(),
          hintText: "Tìm kiếm theo tên sản phẩm",
        ),
      ),
    );
  }
}
