import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/gen/assets.gen.dart';

class SaleProductCard extends StatelessWidget {
  const SaleProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 4),
      padding: AppPadding.padding12,
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
                    style: bodyMedium,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "50000 Vnd",
                    style: bodyRegular.copyWith(color: AppColor.grey4),
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
