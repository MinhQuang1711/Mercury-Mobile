import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/cubit/state/state.dart';
import 'package:mercury/gen/assets.gen.dart';

import '../../../../../../config/const/padding.dart';
import '../../../../../../config/const/radius.dart';
import '../../../../../../config/theme/color.dart';
import '../../../../bloc/sale_report/cubit/cubit.dart';

class SelectDateRangeButton extends StatelessWidget {
  const SelectDateRangeButton({super.key, required this.cubit});
  final SaleReportCubit cubit;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding12,
      decoration: _decoration(),
      child: Row(
        children: [
          BlocBuilder<SaleReportCubit, SaleReportState>(
            builder: (context, state) {
              bool isActive = state.startDate != null;
              return _button(
                isActive: isActive,
                onTap: () => cubit.selectStartDate(context),
                content: state.startDate?.toDateFormat() ?? "Từ",
              );
            },
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Text("|"),
          ),
          BlocBuilder<SaleReportCubit, SaleReportState>(
            builder: (context, state) {
              bool isActive = state.endDate != null;
              return _button(
                isActive: isActive,
                onTap: () => cubit.selectEndDate(context),
                content: state.endDate?.toDateFormat() ?? "Đến",
              );
            },
          ),
        ],
      ),
    );
  }

  BoxDecoration _decoration() {
    return BoxDecoration(
      border: Border.all(
        width: 0.7,
        color: AppColor.grey4,
      ),
      borderRadius: AppContainerBorder.radius6,
    );
  }

  Widget _button({
    bool? isActive,
    required String content,
    required Function() onTap,
  }) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        behavior: HitTestBehavior.translucent,
        child: Row(
          children: [
            Expanded(
                child: Text(
              content,
              style: isActive != true
                  ? captionRegular.copyWith(color: AppColor.grey4)
                  : captionBold.copyWith(color: AppColor.blue),
            )),
            ImageIcon(
              AssetImage(Assets.icon.calendar.keyName),
              color: AppColor.grey4,
              size: 22,
            )
          ],
        ),
      ),
    );
  }
}
