import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/state/state.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';

class SettingProductButton extends StatelessWidget {
  const SettingProductButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<PriceListCubit>();
    return BlocListener<ComboBoxCubit, ComboBoxState>(
      listenWhen: (p, c) => p.products != c.products,
      listener: (_, comboBoxState) =>
          cubit.initComboBoxes(comboBoxState.products),
      child: BlocBuilder<PriceListCubit, PriceListState>(
        buildWhen: (p, c) => p.comboBoxes != c.comboBoxes,
        builder: (_, state) => _button(state, cubit, context),
      ),
    );
  }

  AppSelectButton<ComboBox> _button(
      PriceListState state, PriceListCubit cubit, BuildContext context) {
    return AppSelectButton(
      items: state.comboBoxes,
      sufWidget: const Icon(
        Icons.add,
        color: AppColor.white,
      ),
      hideSelectedItem: true,
      textAlign: TextAlign.center,
      backgroundColor: AppColor.blue,
      style: captionMedium.copyWith(color: AppColor.white),
      init: "Thiết lập giá mới",
      onTap: (val) => cubit.selectProduct(context: context, comboBox: val.item),
      appSearchItem: AppSearchItem.comboBox,
    );
  }
}
