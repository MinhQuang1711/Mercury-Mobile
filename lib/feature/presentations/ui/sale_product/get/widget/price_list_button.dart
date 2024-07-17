import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/cubit.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/get/state/state.dart';
import 'package:mercury/gen/assets.gen.dart';

class PriceListButton extends StatelessWidget {
  const PriceListButton({super.key});

  @override
  Widget build(BuildContext context) {
    bool isSelected(String? selectedId, String? itemId) {
      return selectedId == itemId;
    }

    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      builder: (_, cbState) => BlocBuilder<GetProductCubit, GetProductState>(
        builder: (context, state) {
          ComboBox? comboSelected = cbState.priceList.firstWhere(
              (e) => e.id == state.searchByName.priceListId,
              orElse: () => const ComboBox());

          return PopupMenuButton<ComboBox>(
            color: AppColor.white,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            onSelected: (val) {
              var bloc = context.read<ProductBloc>();
              var cubit = context.read<GetProductCubit>();
              cubit.selectPriceList(bloc, val);
            },
            shadowColor: AppColor.black,
            itemBuilder: (context) => cbState.priceList
                .map((e) =>
                    _popUpMenuItem(e, isSelected(comboSelected.id, e.id)))
                .toList(),
            icon: _child(name: comboSelected.name),
            position: PopupMenuPosition.under,
          );
        },
      ),
    );
  }

  PopupMenuItem<ComboBox> _popUpMenuItem(ComboBox e, bool selected) {
    return PopupMenuItem<ComboBox>(
      value: e,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            e.name ?? "",
            style: captionBold,
          ),
          if (selected)
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
        _iconTag(),
        Text(
          "  ${name ?? "Mặc định"}  ",
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
