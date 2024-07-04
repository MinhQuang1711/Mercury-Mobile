import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';
import 'package:mercury/feature/presentations/widget/delete_icon.dart';

import '../../../../../../config/theme/color.dart';
import '../../../../../data/model/import_invoice/import_invoice.dart';

class ImportInvoiceCard extends StatelessWidget {
  const ImportInvoiceCard({super.key, required this.invoice, this.onDelete});
  final ImportInvoice invoice;
  final Function(ImportInvoice)? onDelete;

  @override
  Widget build(BuildContext context) {
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _id(),
          const SizedBox(height: 7),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _totalKindOfIngredient(),
                    const SizedBox(height: 5),
                    if (invoice.description != null) _description(),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              _totalPrice()
            ],
          ),
          const Divider(),
          Row(
            children: [
              Text(
                invoice.createDate?.toExtractTime() ?? "",
                style: captionRegular,
              ),
              const Spacer(),
              DeleteIcon(
                onTap: () => onDelete?.call(invoice),
              )
            ],
          )
        ],
      ),
    );
  }

  Text _totalPrice() {
    return Text(
      "${invoice.totalPrice?.formatNumber()}",
      style: captionMedium.copyWith(color: AppColor.blue),
    );
  }

  Text _description() {
    return Text(
      invoice.description!,
      style: captionRegular,
    );
  }

  Text _totalKindOfIngredient() {
    return Text(
      "Tổng loại nguyên liệu: ${invoice.detailImportInvoices?.length}",
      style: captionRegular.copyWith(color: AppColor.grey5),
    );
  }

  Text _id() {
    return Text(
      invoice.id ?? "",
      style: captionBold.copyWith(color: AppColor.blueShade2),
    );
  }
}
