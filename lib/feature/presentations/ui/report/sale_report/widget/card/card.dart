import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/model/report_by_day/report_by_day.dart';
import 'package:mercury/feature/domain/model/invoice_query/invoice_query.dart';
import 'package:mercury/feature/domain/repositories/i_sale_invoice.dart';

import '../../../../../../../config/theme/text_style.dart';
import '../../../../../../domain/model/sale_invoice/sale_invoice.dart';

class ReportCard extends StatefulWidget {
  const ReportCard({super.key, required this.reportByDay});
  final ReportByDay reportByDay;

  @override
  State<ReportCard> createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  bool isExpand = false;
  final double MAX_HEIGHT = 300;
  List<SaleInvoice> saleInvoices = [];

  void _getSaleInvoice() async {
    var startDate =
        widget.reportByDay.date?.copyWith(hour: 0, minute: 0, second: 1);
    var endDate =
        widget.reportByDay.date?.copyWith(hour: 23, minute: 59, second: 59);

    (await getIt.get<ISaleInvoiceRepository>().get(InvoiceQuery(
              pageSize: 1000,
              endTime: endDate,
              startTime: startDate,
            )))
        .on(
      whenSuccess: (data) {
        saleInvoices = data.items;
        setState(() {});
      },
      whenFaild: (msg) {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              isExpand = !isExpand;
              if (saleInvoices.isEmpty) {
                _getSaleInvoice();
              } else {
                setState(() {});
              }
            },
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  widget.reportByDay.date?.toDateFormat() ?? "",
                )),
                Expanded(
                    child: Text(
                  widget.reportByDay.revenue?.formatDouble() ?? "",
                )),
                Expanded(
                    child: Text(
                  ((widget.reportByDay.revenue ?? 0) +
                          (widget.reportByDay.shippingFee ?? 0) -
                          (widget.reportByDay.discount ?? 0))
                      .formatDouble(),
                )),
                const SizedBox(width: 10),
                Icon(
                  isExpand
                      ? Icons.arrow_drop_up_rounded
                      : Icons.arrow_drop_down_rounded,
                  color: AppColor.grey4,
                )
              ],
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: isExpand ? MAX_HEIGHT : 0,
            child: Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Flexible(
                    child: Container(
                      padding: AppPadding.padding12,
                      color: AppColor.grey2,
                      child: const Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Text(
                                "Mã HĐ",
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
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  _listSaleInvoiceByDay(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Expanded _listSaleInvoiceByDay() {
    return Expanded(
      flex: 3,
      child: ListView.builder(
          itemCount: saleInvoices.length,
          itemBuilder: (_, index) {
            double total = saleInvoices[index].totalPrice ?? 0;
            double shippingFee = saleInvoices[index].shippingFee ?? 0;
            double discount = saleInvoices[index].dicount ?? 0;

            return Container(
              color: AppColor.white,
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Text(
                        saleInvoices[index].id ?? "",
                        style: captionRegular.copyWith(color: AppColor.blue),
                      )),
                  Expanded(
                      child: Text(
                          saleInvoices[index].totalPrice?.formatDouble() ??
                              "")),
                  Expanded(
                      child:
                          Text((total + shippingFee - discount).formatDouble()))
                ],
              ),
            );
          }),
    );
  }
}
