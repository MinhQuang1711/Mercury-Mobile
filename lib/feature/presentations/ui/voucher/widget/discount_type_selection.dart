import 'package:flutter/material.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class DiscountTypeSelection extends StatelessWidget {
  const DiscountTypeSelection(
      {super.key, required this.discountType, required this.onChanged});
  final DiscountType discountType;
  final Function(DiscountType?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button(
          title: "Giá trị",
          val: DiscountType.VALUE,
          groupVal: discountType,
          onChanged: onChanged,
        ),
        _button(
          title: "Phần trăm",
          val: DiscountType.PERCENT,
          groupVal: discountType,
          onChanged: onChanged,
        )
      ],
    );
  }

  Widget _button(
      {required String title,
      required DiscountType val,
      required DiscountType groupVal,
      required Function(DiscountType?) onChanged}) {
    return Expanded(
      child: Row(
        children: [
          Radio<DiscountType>(
            value: val,
            groupValue: groupVal,
            onChanged: onChanged,
          ),
          Text(
            title,
            style: captionRegular.copyWith(color: AppColor.grey5),
          )
        ],
      ),
    );
  }
}
