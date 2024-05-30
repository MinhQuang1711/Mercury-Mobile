import 'package:flutter/material.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/import_invoice/import_invoice.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

import '../../../../../../config/theme/color.dart';

class ImportInvoiceCard extends StatelessWidget {
  const ImportInvoiceCard({super.key, required this.invoice});
  final ImportInvoice invoice;

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
                    Text(
                      invoice.description ?? "",
                      style: captionRegular,
                    ),
                    Text(
                      invoice.description ?? "",
                      style: captionRegular,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "${invoice.totalPrice?.formatNumber()} VND",
                style: captionMedium.copyWith(color: AppColor.blue),
              )
            ],
          ),
          const Divider(),
          Text(
            invoice.createDate?.toExtractTime() ?? "",
            style: captionRegular,
          )
        ],
      ),
    );
  }

  Text _id() {
    return Text(
      invoice.id ?? "",
      style: bodyMedium,
    );
  }
}
