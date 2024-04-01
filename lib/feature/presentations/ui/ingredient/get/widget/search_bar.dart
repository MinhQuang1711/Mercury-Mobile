// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/router/route.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../widget/animated_search_bar.dart';

class IngredientSearchBar extends StatelessWidget {
  const IngredientSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0, bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _searchField(),
          _createButton(),
        ],
      ),
    );
  }

  GestureDetector _createButton() {
    return GestureDetector(
      onTap: () => AppRouter.router.push(AppPath.createIngredient),
      child: Container(
        margin: const EdgeInsets.only(left: 15),
        padding: AppPadding.padding15,
        decoration: BoxDecoration(
          borderRadius: AppContainerBorder.radius8,
          color: AppColor.blue.withOpacity(0.1),
        ),
        child: const Icon(
          Icons.add,
          size: 20,
          color: AppColor.blue,
        ),
      ),
    );
  }

  Flexible _searchField() {
    return const Flexible(
      child: AnimationSearchField(
        hint: "Tìm kiếm theo tên...",
      ),
    );
  }
}
