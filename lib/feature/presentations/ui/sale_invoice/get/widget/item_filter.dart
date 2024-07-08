import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/get_sale_invoice/state/state.dart';

class ItemFilterOfSaleInvoice extends StatelessWidget {
  const ItemFilterOfSaleInvoice({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Align(
        alignment: Alignment.centerRight,
        child: BlocBuilder<GetSaleInvoiceCubit, GetSaleInvoiceState>(
          buildWhen: (p, c) =>
              p.query.startTime != c.query.startTime ||
              p.query.endTime != c.query.endTime,
          builder: (context, state) {
            var startDate = state.query.startTime?.toDateFormat() ?? "";
            var endDate = state.query.endTime?.toDateFormat() ?? "";

            return state.query.startTime != null && state.query.endTime != null
                ? Text(
                    (startDate == endDate)
                        ? state.query.startTime?.getName() ?? ""
                        : "$startDate -> $endDate",
                    style: detailBold.copyWith(color: AppColor.blue),
                  )
                : const SizedBox();
          },
        ),
      ),
    );
  }
}
