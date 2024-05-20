import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';
import 'package:mercury/gen/assets.gen.dart';

class SaleProductCard extends StatelessWidget {
  const SaleProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(Assets.image.defaultAvatar.keyName),
          ),
          const SizedBox(width: 20),
          Expanded(
              child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Coldbrew Apricot",
                    style: bodyBold,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "50000 Vnd",
                    style: bodyRegular.copyWith(color: AppColor.black),
                  )
                ],
              ),
              const Spacer(),
              const Icon(Icons.more_vert)
            ],
          ))
        ],
      ),
    );
  }
}
