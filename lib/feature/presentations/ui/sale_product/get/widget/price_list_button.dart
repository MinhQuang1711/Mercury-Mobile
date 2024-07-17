import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/gen/assets.gen.dart';

class PriceListButton extends StatelessWidget {
  const PriceListButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      builder: (_, state) => PopupMenuButton<ComboBox>(
        color: AppColor.white,
        padding: EdgeInsets.zero,
        shadowColor: AppColor.black,
        itemBuilder: (context) =>
            state.priceList.map((e) => _popUpMenuItem(e)).toList(),
        icon: _child(),
        position: PopupMenuPosition.under,
      ),
    );
  }

  PopupMenuItem<ComboBox> _popUpMenuItem(ComboBox e) {
    return PopupMenuItem<ComboBox>(
      value: e,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            e.name ?? "",
            style: captionBold,
          ),
          const Icon(
            Icons.done,
            color: AppColor.green,
          )
        ],
      ),
    );
  }

  Widget _child({String? name}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        PopupMenuButton(
          itemBuilder: (context) => [],
        ),
        _iconTag(),
        Text(
          name ?? "  Mặc định  ",
          style: captionMedium.copyWith(color: AppColor.grey5),
        ),
        _dropIcon()
      ],
    );
  }

  Icon _dropIcon() {
    return const Icon(
      Icons.keyboard_arrow_down_outlined,
      size: 18,
    );
  }

  ImageIcon _iconTag() {
    return ImageIcon(
      AssetImage(Assets.icon.priceTag.keyName),
      color: AppColor.blue,
    );
  }
}
