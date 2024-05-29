import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class DetailSaleInvoiceCard extends StatelessWidget {
  const DetailSaleInvoiceCard({
    super.key,
    required this.comboBox,
    this.onAdd,
    this.onRemove,
  });
  final ComboBox comboBox;
  final Function(ComboBox)? onAdd;
  final Function(ComboBox)? onRemove;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      // padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Column(
            children: [_name(), const SizedBox(height: 5), _price()],
          ),
          const Spacer(),
          _addButton(),
          Text(
            (comboBox.quantity ?? 1).toString(),
            style: bodyBold,
          ),
          _removeBtton(),
        ],
      ),
    );
  }

  IconButton _removeBtton() {
    return IconButton(
        onPressed: () => onRemove?.call(comboBox),
        icon: const Icon(
          Icons.remove_circle,
          color: AppColor.red,
        ));
  }

  IconButton _addButton() {
    return IconButton(
      onPressed: () => onAdd?.call(comboBox),
      icon: const Icon(Icons.add_circle_outlined),
      color: AppColor.blue,
    );
  }

  Text _price() {
    return Text(
      (comboBox.price ?? 0).formatNumber(),
      style: captionRegular.copyWith(color: AppColor.grey4),
    );
  }

  Text _name() {
    return Text(
      comboBox.name ?? "",
      style: bodyMedium,
    );
  }
}
