import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/cubit.dart';
import 'package:mercury/feature/presentations/bloc/dashboard/state/state.dart';
import 'package:mercury/feature/presentations/ui/dashboard/widget/bussiness_info.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class OverviewBarByMonth extends StatelessWidget {
  const OverviewBarByMonth({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DashboardCubit, DashboardState>(
      buildWhen: (p, c) => p.financialRecordOfMonth != c.financialRecordOfMonth,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              children: [
                BussinessInfo(
                  title: "Doanh thu",
                  value: state.financialRecordOfMonth.revenue ?? 0,
                ),
                BussinessInfo(
                  title: "Lợi nhuận",
                  color: Colors.greenAccent.shade700,
                  value: state.financialRecordOfMonth.profit ?? 0,
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(),
            ),
            _info(
              title: "Nhập hàng",
              color: AppColor.darkRed,
              iconData: Icons.download_rounded,
              value: state.financialRecordOfMonth.importCost ?? 0,
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
    return Row(
      children: [
        Expanded(
          child: Text(
            title,
            style: captionRegular.copyWith(color: AppColor.grey5),
          ),
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              value.formatNumber(symbol: false) + value.getUnit(),
              style: captionMedium.copyWith(color: color ?? AppColor.blue),
            ),
          ),
        )
      ],
    );
  }
}
