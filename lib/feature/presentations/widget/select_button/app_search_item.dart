import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/gen/assets.gen.dart';
import 'package:select_button_package/model/search_item.dart';

import '../../../data/model/voucher/voucher.dart';
import '../../../domain/enum/discunt_type.dart';
import '../../../domain/model/combo_box/combo_box.dart';
// import '../../../domain/model/voucher/voucher.dart';

class AppSearchItem {
  static SearchItem<ComboBox> comboBox(ComboBox val) {
    return SearchItem<ComboBox>(
      item: val,
      displayLabel: val.name ?? "",
    );
  }

  static SearchItem<ComboBox> product(ComboBox val) {
    return SearchItem<ComboBox>(
      item: val,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.local_drink,
                  color: AppColor.blue,
                  size: 30,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(val.name ?? "", style: bodyMedium),
                    const SizedBox(height: 5),
                    Text(
                      "${(val.price ?? 0).formatDouble()} VND",
                      style: captionMedium.copyWith(color: AppColor.grey5),
                    )
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
        ],
      ),
      displayLabel: val.name ?? "",
    );
  }

  static SearchItem<Voucher> voucher(Voucher val) {
    return SearchItem<Voucher>(
        item: val,
        displayLabel: val.name ?? "",
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: [
              ImageIcon(
                AssetImage(Assets.icon.coupon.keyName),
                color: AppColor.green,
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(val.name ?? "", style: bodyRegular),
                    Text(
                      "Giá trị: ${val.discountType == DiscountType.PERCENT ? "${val.percentValue?.formatDouble()}%" : "${val.discountValue?.formatNumber()}"}",
                      style: captionMedium.copyWith(color: AppColor.green),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
