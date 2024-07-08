import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/number.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../bloc/sale_invoice/bloc/bloc.dart';
import '../../../../bloc/sale_invoice/bloc/state/state.dart';

class SaleInvoiceOverview extends StatelessWidget {
  const SaleInvoiceOverview({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SaleInvoiceBloc, SaleInvoiceState>(
      buildWhen: (p, c) =>
          p.mapOrNull(got: (value) => value) !=
          c.mapOrNull(got: (value) => value),
      builder: (context, state) {
        var metaData = state.whenOrNull(got: (_, pagedList) => pagedList);

        return Column(
          children: [
            _info(
              title: "Tổng tiền hàng: ",
              content: (metaData?.totalPrice ?? 0).formatDouble(),
              contentStyle: detailBold.copyWith(color: AppColor.blue),
              titleStyle: detailRegular.copyWith(color: AppColor.grey5),
            ),
            const SizedBox(height: 3),
            _info(
              content: " hóa đơn",
              title: (metaData?.totalCount ?? 0).toString(),
              titleStyle: detailBold.copyWith(color: AppColor.grey5),
              contentStyle: detailRegular.copyWith(color: AppColor.grey5),
            )
          ],
        );
      },
    );
  }

  RichText _info({
    required String title,
    required String content,
    TextStyle? titleStyle,
    TextStyle? contentStyle,
  }) {
    return RichText(
      text: TextSpan(
        text: title,
        style: titleStyle,
        children: [TextSpan(text: content, style: contentStyle)],
      ),
    );
  }
}
