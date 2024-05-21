import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/feature/presentations/widget/search_icon.dart';
import 'package:mercury/feature/presentations/widget/square_create_button.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class SaleProductSearchBar extends StatelessWidget {
  const SaleProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0, bottom: 0),
      child: const SizedBox(
        width: double.infinity,
        child: AppTextField(
          canDelete: true,
          prefWidget: SearchIcon(),
          sufWidget: SquareCreateButton(),
          hintText: "Tìm kiếm theo tên sản phẩm",
        ),
      ),
    );
  }
}
