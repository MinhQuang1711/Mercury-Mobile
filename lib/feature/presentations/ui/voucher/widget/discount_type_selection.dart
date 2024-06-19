import 'package:flutter/material.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class DiscountTypeSelection extends StatelessWidget {
  const DiscountTypeSelection({super.key, this.init, required this.onChanged});
  final DiscountType? init;
  final Function(DiscountType?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _button(
          title: "Giá trị",
          val: DiscountType.VALUE,
          groupVal: DiscountType.VALUE,
          onChanged: onChanged,
        ),
        _button(
          title: "Phần trăm",
          val: DiscountType.PERCENT,
          groupVal: DiscountType.VALUE,
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
