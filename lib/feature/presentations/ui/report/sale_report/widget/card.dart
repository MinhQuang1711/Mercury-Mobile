import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/data/model/report_by_day/report_by_day.dart';

class ReportCard extends StatefulWidget {
  const ReportCard({super.key, required this.reportByDay});
  final ReportByDay reportByDay;

  @override
  State<ReportCard> createState() => _ReportCardState();
}

class _ReportCardState extends State<ReportCard> {
  bool isExpand = false;
  final double MAX_HEIGHT = 350;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              isExpand = !isExpand;
              setState(() {});
            },
            child: Row(
              children: [
                Expanded(
                    child: Text(
                  widget.reportByDay.date?.toDateFormat() ?? "",
                  // style: captionBold,
                )),
                Expanded(
                    child: Text(
                  widget.reportByDay.revenue?.formatDouble() ?? "",
                  // style: captionBold,
                )),
                Expanded(
                    child: Text(
                  ((widget.reportByDay.revenue ?? 0) +
                          (widget.reportByDay.shippingFee ?? 0) -
                          (widget.reportByDay.discount ?? 0))
                      .formatDouble(),
                  // style: captionRegularca,
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
          )
        ],
      ),
    );
  }
}
