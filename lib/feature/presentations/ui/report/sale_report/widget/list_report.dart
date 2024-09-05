import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../bloc/sale_report/bloc/bloc.dart';
import '../../../../bloc/sale_report/bloc/state/state.dart';
import 'card/card.dart';

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
                ...report.map((e) => ReportCard(reportByDay: e)).toList(),
              ]);
      },
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
