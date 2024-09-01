import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/report_by_day/report_by_day.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../bloc/sale_report/bloc/bloc.dart';
import '../../../../bloc/sale_report/bloc/state/state.dart';

class ListReport extends StatelessWidget {
  const ListReport({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleReportBloc, SaleReportBlocState>(
      buildWhen: (p, c) =>
          p.whenOrNull(getSaleSuccess: (reports) => reports) !=
          c.whenOrNull(getSaleSuccess: (reports) => reports),
      builder: (context, state) {
        var report =
            state.whenOrNull(getSaleSuccess: (reports) => reports) ?? [];
        return report.isEmpty
            ? const Center(child: EmptyWidget())
            : Column(children: [
                _headBar(),
                const SizedBox(height: 5),
                const Divider(
                  color: AppColor.blue,
                ),
                ...report.map((e) => _card(e)).toList(),
              ]);
      },
    );
  }

  Padding _card(ReportByDay e) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Expanded(
              child: Text(
            e.date?.toDateFormat() ?? "",
            // style: captionBold,
          )),
          Expanded(
              child: Text(
            e.revenue?.formatDouble() ?? "",
            // style: captionBold,
          )),
          Expanded(
              child: Text(
            ((e.revenue ?? 0) + (e.shippingFee ?? 0) - (e.discount ?? 0))
                .formatDouble(),
            // style: captionRegularca,
          )),
        ],
      ),
    );
  }

  Row _headBar() {
    return const Row(
      children: [
        Expanded(
            child: Text(
          "Ngày",
          style: captionBold,
        )),
        Expanded(
            child: Text(
          "Doanh thu",
          style: captionBold,
        )),
        Expanded(
            child: Text(
          "Thực nhận",
          style: captionBold,
        )),
      ],
    );
  }
}
