import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/gen/assets.gen.dart';

import '../../../../domain/model/detail_price/detail_price.dart';

class DetailPriceCard extends StatelessWidget {
  const DetailPriceCard(this.e, {super.key, this.onTapRemove});
  final DetailPrice e;
  final Function(DetailPrice)? onTapRemove;

  @override
  Widget build(BuildContext context) {
    double newPrice = e.salePrice ?? 0;
    double defaultPrice = e.defaultPrice ?? 0;
    double cl = newPrice - defaultPrice;

    TextStyle style(double? val) {
      if (val == null) {
        return captionRegular;
      }
      return captionRegular.copyWith(
        color: val < 0 ? AppColor.red : AppColor.green,
      );
    }

    return Container(
      padding: AppPadding.padding12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _name(),
              GestureDetector(
                onTap: () => onTapRemove?.call(e),
                child: ImageIcon(
                  AssetImage(Assets.icon.trashBin.keyName),
                  size: 20,
                ),
              )
            ],
          ),
          const SizedBox(height: 7),
          _title(),
          const SizedBox(height: 5),
          _value(defaultPrice, style, newPrice, cl),
        ],
      ),
    );
  }

  Expanded _name() {
    return Expanded(
      child: Text(
        e.prodName ?? "",
        style: captionBold,
      ),
    );
  }

  Row _value(double defaultPrice, TextStyle Function(double? val) style,
      double newPrice, double cl) {
    return Row(
      children: [
        Expanded(
            child: Text(
          defaultPrice.formatDouble(),
          style: style(null),
        )),
        Expanded(
            child: Text(
          newPrice.formatDouble(),
          style: style(null),
        )),
        Expanded(
            child: Text(
          cl.formatDouble(),
          style: style(cl),
        ))
      ],
    );
  }

  Row _title() {
    return const Row(
      children: [
        Expanded(child: Text("Mặc định")),
        Expanded(child: Text("Giá mới")),
        Expanded(child: Text("Chênh lệch"))
      ],
    );
  }
}
