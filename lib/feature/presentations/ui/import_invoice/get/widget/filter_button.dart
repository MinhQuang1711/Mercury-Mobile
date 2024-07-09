import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/get_import_invoice/state/state.dart';
import 'package:mercury/gen/assets.gen.dart';

import '../../../../../../config/theme/text_style.dart';

class ImportInvoiceFilterButton extends StatelessWidget {
  const ImportInvoiceFilterButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageIcon(
          AssetImage(Assets.icon.calendar.keyName),
          size: 18,
          color: AppColor.grey5,
        ),
        const SizedBox(width: 5),
        BlocBuilder<GetImportInvoiceCubit, GetImportInvoiceState>(
          buildWhen: (p, c) => p.query != c.query,
          builder: (context, state) {
            var endDate = state.query.endTime?.toDateFormat() ?? "";
            var startDate = state.query.startTime?.toDateFormat() ?? "";

            return Text(
              (startDate == endDate)
                  ? state.query.startTime?.getName() ?? ""
                  : "$startDate -> $endDate",
              style: detailBold.copyWith(color: AppColor.blue),
            );
          },
        )
      ],
    );
  }
}
