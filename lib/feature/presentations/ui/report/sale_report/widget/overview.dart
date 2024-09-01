import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_report/bloc/state/state.dart';

class SaleReportOverview extends StatelessWidget {
  const SaleReportOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.white,
      child: BlocBuilder<SaleReportBloc, SaleReportBlocState>(
        buildWhen: (p, c) =>
            p.mapOrNull(getSaleSuccess: (value) => value) !=
            c.mapOrNull(getSaleSuccess: (value) => value),
        builder: (context, state) {
          final reports =
              state.whenOrNull(getSaleSuccess: (reports) => reports) ?? [];
          final shippingFee =
              reports.fold<double>(0.0, (p, e) => p + (e.shippingFee ?? 0));
          final discount =
              reports.fold<double>(0.0, (p, e) => p + (e.discount ?? 0));
          final revenue =
              reports.fold<double>(0.0, (p, e) => p + (e.revenue ?? 0));
          final totalBill =
              reports.fold<double>(0.0, (p, e) => p + (e.quantity ?? 0));
          final profit = reports.fold(0.0, (p, e) => p + (e.profit ?? 0));
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              _infoItem(title: "Tổng hóa đơn", value: totalBill),
              _infoItem(title: "Doanh thu", value: revenue),
              _infoItem(
                title: "Doanh thu thực nhận",
                value: revenue + shippingFee - discount,
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  const Text(
                    "Tiền lãi sau cùng: ",
                    style: bodyRegular,
                  ),
                  Text(
                    profit.formatDouble(),
                    style: bodyBold.copyWith(color: AppColor.blue),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _infoItem(
      {required String title,
      required double value,
      MainAxisAlignment? mainAxisAlignment}) {
    return Row(
      mainAxisAlignment: mainAxisAlignment ?? MainAxisAlignment.start,
      children: [
        Text("$title: "),
        Flexible(
          child: Text(
            value.formatDouble(),
            style: captionBold,
            overflow: TextOverflow.visible,
          ),
        )
      ],
    );
  }
}
