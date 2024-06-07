import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/datetime_ex.dart';
import 'package:mercury/core/utils/extension/number.dart';
import 'package:mercury/feature/domain/model/sale_invoice/sale_invoice.dart';
import 'package:mercury/feature/presentations/widget/card_container.dart';

class SaleInvoiceCard extends StatelessWidget {
  const SaleInvoiceCard({super.key, required this.saleInvoice});
  final SaleInvoice saleInvoice;

  @override
  Widget build(BuildContext context) {
    double valueDiscount = (saleInvoice.dicount ?? 0);
    return ContainerCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _invoiceId(),
          const SizedBox(height: 8),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _valueOfBill(),
                  const SizedBox(height: 5),
                  _totalDiscount(valueDiscount),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  _valueAfterDiscount(valueDiscount),
                  Text(saleInvoice.customer?.fullName ?? "Khách lẻ")
                ],
              )
            ],
          ),
          const Divider(),
          _createDate()
        ],
      ),
    );
  }

  Text _valueAfterDiscount(double valueDiscount) {
    return Text(
      "${((saleInvoice.totalPrice ?? 0) - valueDiscount).formatNumber()} VND",
      style: captionMedium.copyWith(color: AppColor.blue),
    );
  }

  Text _createDate() => Text(saleInvoice.createDate?.toExtractTime() ?? "");

  Text _totalDiscount(double val) {
    return Text(
      "Giảm giá: ${val.formatNumber()} VND",
      style: captionRegular,
    );
  }

  Text _valueOfBill() {
    return Text(
      "Giá trị: ${saleInvoice.totalPrice?.formatNumber() ?? "0"} VND",
      style: captionRegular,
    );
  }

  Text _invoiceId() {
    return Text(
      saleInvoice.id ?? "",
      style: bodyBold.copyWith(color: AppColor.blueShade2),
    );
  }
}
