// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/voucher/voucher.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';
import 'package:searchfield/searchfield.dart';

import '../../../../config/theme/text_style.dart';
import '../../../domain/model/combo_box/combo_box.dart';

class AppItemField {
  static SearchFieldListItem<ComboBox> comboBox(ComboBox val) {
    return SearchFieldListItem<ComboBox>(val.name ?? "",
        item: val,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: _item(val.name ?? ""),
        ));
  }

  static SearchFieldListItem<Voucher> voucher(Voucher val) {
    return SearchFieldListItem<Voucher>(val.name ?? "",
        item: val,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              Expanded(child: _item(val.name ?? "")),
              Text(
                "Giá trị: ${val.discountType == DiscountType.PERCENT.index ? "${val.percentValue?.formatNumber()}%" : "${val.discountValue?.formatNumber()}"}",
                style: captionMedium.copyWith(color: AppColor.green),
              ),
            ],
          ),
        ));
  }

  static Text _item(String value) {
    return Text(
      "   $value",
      style: bodyRegular,
    );
  }
}
