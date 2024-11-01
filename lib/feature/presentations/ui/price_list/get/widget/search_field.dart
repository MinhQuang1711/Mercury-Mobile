import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/router/path.dart';
import '../../../../../../config/theme/color.dart';
import '../../../../widget/button/create_square_button.dart';
import '../../../../widget/textfield/textfield.dart';

class PriceListSearchField extends StatelessWidget {
  const PriceListSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPadding.padding16,
      child: Row(
        children: [
          const Expanded(
            child: AppTextField(
              prefWidget: Icon(
                Icons.search,
                color: AppColor.blue,
              ),
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
}
