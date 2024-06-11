import 'package:flutter/widgets.dart';
import 'package:mercury/feature/data/model/detail_sale_invoice/detail_sale_invoice.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';

import '../../../../widget/empty_widget.dart';
import '../../create/widget/card.dart';

class ProductSelected extends StatelessWidget {
  const ProductSelected({super.key, required this.detailInvoices});
  final List<DetailSaleInvoice> detailInvoices;

  @override
  Widget build(BuildContext context) {
    return GreyContainer(
      child: detailInvoices.isEmpty
          ? const EmptyWidget()
          : Column(
              children: detailInvoices
                  .map((e) => DetailSaleInvoiceCard(
                          comboBox: ComboBox(
                        price: e.product?.salePrice,
                        name: e.product?.name,
                        quantity: e.quantity,
                      )))
                  .toList(),
            ),
    );
  }
}
