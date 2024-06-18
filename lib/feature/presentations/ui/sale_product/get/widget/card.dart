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
              const SizedBox(height: 5),
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
      "${product.salePrice?.formatNumber() ?? 0}",
      style: captionRegular.copyWith(color: AppColor.grey5),
    );
  }

  Row _nameAndPercentCost() {
    return Row(
      children: [
        Expanded(
          child: Text(
            product.name ?? "",
            style: bodyBold.copyWith(color: AppColor.blueShade2),
          ),
        ),
        Expanded(
            child: Row(
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("|"),
            ),
            Icon(Icons.bar_chart_rounded,
                color: product.getColorOfPercenCost()),
            Text(
              " ${product.caculatePercentCost().formatDouble()} %",
              style:
                  captionMedium.copyWith(color: product.getColorOfPercenCost()),
            )
          ],
        ))
      ],
    );
  }
}

class CircleImage extends StatefulWidget {
  const CircleImage({super.key, required this.base64});
  final String base64;

  @override
  State<CircleImage> createState() => _CircleImageState();
}

class _CircleImageState extends State<CircleImage> {
  bool isBuildImageSuccess = true;
  void changedStateBuild() {
    isBuildImageSuccess = !isBuildImageSuccess;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isBuildImageSuccess
        ? CircleAvatar(
            radius: 30,
            onBackgroundImageError: (exception, stackTrace) =>
                changedStateBuild(),
            backgroundImage: MemoryImage(
              base64Decode(widget.base64),
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: AppColor.white,
            backgroundImage: AssetImage(Assets.image.coffeeCup.keyName));
  }
}
