import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/extension/product.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class SaleProductCard extends StatelessWidget {
  const SaleProductCard({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Row(
        children: [
          _image(),
          const SizedBox(width: 25),
          _info(),
        ],
      ),
    );
  }

  Expanded _info() {
    return Expanded(
        child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _nameAndPercentCost(),
              const SizedBox(height: 5),
              _salePrice()
            ],
          ),
        ),
        const SizedBox(width: 10),
        const Icon(Icons.more_vert)
      ],
    ));
  }

  Text _salePrice() {
    return Text(
      "${product.salePrice?.formatNumber() ?? 0} Vnd",
      style: captionRegular.copyWith(color: AppColor.black),
    );
  }

  Row _nameAndPercentCost() {
    return Row(
      children: [
        Expanded(
          child: Text(
            product.name ?? "",
            style: h6Bold.copyWith(color: AppColor.blueShade2),
          ),
        ),
        Expanded(
            flex: 2,
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("|"),
                ),
                Icon(Icons.bar_chart_rounded,
                    color: product.getColorOfPercenCost()),
                Text(
                  " ${product.caculatePercentCost().formatNumber()} %",
                  style: captionMedium.copyWith(
                      color: product.getColorOfPercenCost()),
                )
              ],
            ))
      ],
    );
  }

  CircleAvatar _image() {
    return CircleAvatar(
      radius: 28,
      backgroundImage: MemoryImage(base64Decode(product.imageByte ?? "")),
    );
  }
}
