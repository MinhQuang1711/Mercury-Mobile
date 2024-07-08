import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../../config/theme/text_style.dart';
import '../../../../bloc/sale_invoice/bloc/bloc.dart';
import '../../../../bloc/sale_invoice/bloc/state/state.dart';

class SaleInvoiceOverview extends StatelessWidget {
  const SaleInvoiceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleInvoiceBloc, SaleInvoiceState>(
      builder: (context, state) {
        var metaData = state.whenOrNull(got: (_, pagedList) => pagedList);

        return Column(
          children: [
            _info(
                title: "Tổng tiền hàng: ",
                content: "0",
                titleColor: AppColor.grey5,
                contentColor: AppColor.blue),
            _info(
                title: (metaData?.totalCount ?? 0).toString(),
                content: " hóa đơn")
          ],
        );
      },
    );
  }

  RichText _info({
    required String title,
    required String content,
    Color? titleColor,
    Color? contentColor,
  }) {
    return RichText(
      text: TextSpan(
        text: title,
        style: detailBold.copyWith(color: titleColor ?? AppColor.blue),
        children: [
          TextSpan(
            text: content,
            style:
                detailRegular.copyWith(color: contentColor ?? AppColor.grey5),
          )
        ],
      ),
    );
  }
}
