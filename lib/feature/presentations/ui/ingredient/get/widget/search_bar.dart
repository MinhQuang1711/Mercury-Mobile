// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/search_by_name/search_by_name.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/bloc/event/event.dart';
import 'package:mercury/feature/presentations/widget/button/create_square_button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class IngredientSearchBar extends StatelessWidget {
  const IngredientSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0, bottom: 0),
      child: Row(
        children: [
          _searchBar(context),
          const SizedBox(width: 10),
          _createButton(context),
        ],
      ),
    );
  }

  Widget _createButton(BuildContext context) {
    void handleWhenHasValue() => context
        .read<IngredientBloc>()
        .add(const IngredientEvent.get(searchByName: SearchByName()));

    void navigateToCreateScreen() => context.pushAndListen(
          location: AppPath.createIngredient,
          handleWhenHasValue: handleWhenHasValue,
        );

    return CreateSquareButton(onTap: navigateToCreateScreen);
  }

  Widget _searchBar(BuildContext context) {
    final bloc = context.read<IngredientBloc>();
    void onSearch({String? name}) => bloc
        .add(IngredientEvent.get(searchByName: SearchByName(name: name ?? "")));

    void onChanged(String? val) => onSearch(name: val);

    return Expanded(
      child: AppTextField(
        onChanged: onChanged,
        onTapClearButton: onSearch,
        hintText: "Tìm kiếm theo tên...",
        prefWidget: const Icon(Icons.search),
      ),
    );
  }
}
