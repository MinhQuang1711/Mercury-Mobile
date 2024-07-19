import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/extension/product.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';
import 'package:mercury/gen/assets.gen.dart';

class SaleProductCard extends StatelessWidget {
  const SaleProductCard(
      {super.key, required this.product, this.onTapMoreButton});
  final Product product;
  final Function(Product)? onTapMoreButton;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Row(
        children: [
          CircleImage(base64: product.imageByte ?? ""),
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
              const SizedBox(height: 7),
              _salePrice()
            ],
          ),
        ),
        const SizedBox(width: 10),
        GestureDetector(
            onTap: () => onTapMoreButton?.call(product),
            child: const Icon(Icons.more_vert))
      ],
    ));
  }

  Text _salePrice() {
    return Text(
      "${product.salePrice?.formatDouble() ?? 0} VND",
      style: captionRegular.copyWith(color: AppColor.grey5, fontSize: 14),
    );
  }

  Widget _nameAndPercentCost() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          flex: 2,
          child: Text(
            product.name ?? "",
            style: captionBold.copyWith(color: AppColor.blueShade2),
          ),
        ),
        const SizedBox(width: 10),
        Expanded(
          child: Text(
            " ${product.caculatePercentCost().formatDouble()} %",
            style: detailBold.copyWith(color: product.getColorOfPercenCost()),
          ),
        )
        // Row(
        //   children: [
        //     const Padding(
        //       padding: EdgeInsets.symmetric(horizontal: 10),
        //       child: Text("|"),
        //     ),
        //     Icon(Icons.bar_chart_rounded,
        //         color: product.getColorOfPercenCost()),
        //     Text(
        //       " ${product.caculatePercentCost().formatDouble()} %",
        //       style: detailBold.copyWith(color: product.getColorOfPercenCost()),
        //     )
        //   ],
        // )
      ],
    );
  }
}

class CircleImage extends StatelessWidget {
  const CircleImage({super.key, required this.base64});
  final String base64;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: AppColor.grey2,
      child: ClipOval(
          child: Image.memory(
        base64Decode(base64),
        fit: BoxFit.fill,
        errorBuilder: (context, error, stackTrace) {
          return Image(
              image: AssetImage(Assets.image.coffeeCup.keyName),
              fit: BoxFit.cover);
        },
      )),
    );
  }
}
