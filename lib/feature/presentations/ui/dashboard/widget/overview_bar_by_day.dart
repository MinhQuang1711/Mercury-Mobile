import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class OverviewBarByDay extends StatelessWidget {
  const OverviewBarByDay({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.financialRecordOfDay != c.financialRecordOfDay,
      builder: (context, state) {
        return Column(
          children: [
            _info(
              title: "Doanh thu",
              iconData: Icons.inventory_2_outlined,
              value: state.financialRecordOfDay.revenue ?? 0,
            ),
            _info(
              color: AppColor.green,
              title: "Lãi sản phẩm",
              iconData: Icons.attach_money_rounded,
              value: state.financialRecordOfDay.profit ?? 0,
            ),
            _info(
              title: "Nhập hàng",
              color: AppColor.darkRed,
              iconData: Icons.download_rounded,
              value: state.financialRecordOfDay.importCost ?? 0,
            ),
          ],
        );
      },
    );
  }

  Widget _info(
      {required String title,
      required double value,
      required IconData iconData,
      Color? color}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Icon(iconData),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              title,
              style: bodyRegular,
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                value.formatNumber(),
                style: captionBold.copyWith(color: color ?? AppColor.blue),
              ),
            ),
          )
        ],
      ),
    );
  }
}
