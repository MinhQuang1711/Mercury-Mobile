import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';

class DetailProductCard extends StatelessWidget {
  const DetailProductCard(
      {super.key, required this.comboBox, this.onTapRemove});
  final ComboBox comboBox;
  final Function(ComboBox)? onTapRemove;

  @override
  Widget build(BuildContext context) {
    final weight = comboBox.value ?? 0;
    final cost = comboBox.price ?? 0;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: AppPadding.padding12,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: AppContainerBorder.radius8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _nameAndWeight(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (onTapRemove != null) _removeButton(),
              const SizedBox(height: 10),
              _totalPrice(weight, cost),
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector _removeButton() {
    return GestureDetector(
      onTap: () => onTapRemove?.call(comboBox),
      child: const Icon(
        Icons.highlight_remove_outlined,
        color: AppColor.red,
      ),
    );
  }

  Text _totalPrice(double weight, double cost) {
    return Text(
      "| Thành tiền: ${(weight * cost).formatNumber()} vnd",
      style: captionMedium,
    );
  }

  Expanded _nameAndWeight() {
    return Expanded(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [_name(), const SizedBox(height: 10), _weight()],
    ));
  }

  Text _weight() {
    return Text(
      "Định lượng: ${(comboBox.value ?? 0).formatNumber()} g",
      style: captionRegular,
    );
  }

  Text _name() {
    return Text(
      comboBox.name ?? "",
      style: bodyBold.copyWith(color: AppColor.blueShade2),
    );
  }
}
