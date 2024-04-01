import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';

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
          const Flexible(
            child: AnimationSearchField(
              hint: "Tìm kiếm theo tên...",
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            padding: AppPadding.padding15,
            decoration: BoxDecoration(
              borderRadius: AppContainerBorder.radius8,
              color: AppColor.blue.withOpacity(0.1),
            ),
            child: const Center(
                child: Icon(
              Icons.add,
              size: 20,
              color: AppColor.blue,
            )),
          )
        ],
      ),
    );
  }
}
