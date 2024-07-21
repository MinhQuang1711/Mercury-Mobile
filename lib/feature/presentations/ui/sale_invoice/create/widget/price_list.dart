import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:mercury/gen/assets.gen.dart';
import 'package:select_button_package/model/search_item.dart';

class PriceListField extends StatelessWidget {
  const PriceListField({super.key, required this.onTap});
  final Function(SearchItem<ComboBox>) onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ComboBoxCubit, ComboBoxState>(
      buildWhen: (p, c) => p.priceList != c.priceList,
      builder: (context, state) => Row(
        children: [
          ImageIcon(
            AssetImage(Assets.icon.priceTag.keyName),
            color: AppColor.blue,
          ),
          const SizedBox(width: 10),
          const Expanded(
            child: Text(
              "Bảng giá: ",
              style: captionMedium,
            ),
          ),
          Expanded(
            flex: 2,
            child: AppSelectButton(
              items: state.priceList,
              onTap: onTap,
              init: "Mặc định",
              title: "Chọn bảng giá",
              hintText: "Chọn bảng giá",
              searchHint: "Tìm kiếm bảng giá theo tên",
              appSearchItem: AppSearchItem.comboBox,
            ),
          ),
        ],
      ),
    );
  }
}
