import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import '../../../widget/animated_search_bar.dart';

class IngredientSearchBar extends StatelessWidget {
  const IngredientSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0),
      child: const Row(
        children: [
          Flexible(
            child: AnimationSearchField(
              hint: "Tìm kiếm theo tên...",
            ),
          ),
        ],
      ),
    );
  }
}
