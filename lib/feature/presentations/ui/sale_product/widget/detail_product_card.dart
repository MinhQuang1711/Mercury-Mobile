import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class DetailProductCard extends StatelessWidget {
  const DetailProductCard({super.key, required this.comboBox});
  final ComboBox comboBox;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        children: [
          Text(
            comboBox.name ?? "",
            style: bodyBold.copyWith(color: AppColor.blue),
          ),
          const SizedBox(height: 10),
          Text(
            (comboBox.value ?? 0).formatNumber(),
            style: captionMedium.copyWith(color: AppColor.black),
          )
        ],
      ),
    );
  }
}
