import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class SaleProductSearchBar extends StatelessWidget {
  const SaleProductSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding12.copyWith(top: 0, bottom: 0),
      child: Row(
        children: [
          Expanded(
            child: AppTextField(
              canDelete: true,
              prefWidget: const Icon(Icons.search),
              sufWidget: Container(
                padding: AppPadding.padding8,
                decoration: BoxDecoration(
                  color: AppColor.blueShade2,
                  borderRadius: AppContainerBorder.radius8,
                ),
                child: const Icon(
                  Icons.add,
                  size: 22,
                  color: AppColor.white,
                ),
              ),
              hintText: "Tìm kiếm theo tên sản phẩm",
            ),
          ),
        ],
      ),
    );
  }
}
