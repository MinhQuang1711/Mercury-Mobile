import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/state/state.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/select_button/app_search_item.dart';
import 'package:mercury/feature/presentations/widget/select_button/select_button.dart';
import 'package:select_button_package/model/search_item.dart';

class ProductField extends StatelessWidget {
  const ProductField({super.key, this.onTap});
  final Function(SearchItem<ComboBox>)? onTap;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommonSaleInvoiceCubit, CommonSaleInvoiceState>(
      buildWhen: (previous, current) =>
          previous.request.detailSaleInvoice !=
          current.request.detailSaleInvoice,
      builder: (context, commonState) {
        return BlocBuilder<ComboBoxCubit, ComboBoxState>(
            buildWhen: (previous, current) =>
                previous.products != current.products,
            builder: (context, state) {
              // Khong hien thi cac san pham da chon
              var allProducts = List<ComboBox>.from(state.products);
              allProducts.removeWhere((e) =>
                  (commonState.request.detailSaleInvoice ?? [])
                      .any((selected) => e.id == selected.id));
              return ColumnInput(
                isRequied: true,
                titleLabel: "Sản phẩm",
                bottomWidget: AppSelectButton(
                  title: "Chọn sản phẩm",
                  hintText: "Chọn sản phẩm",
                  searchHint: "Tìm kiếm sản phẩm theo tên",
                  items: allProducts,
                  onTap: onTap ?? (val) {},
                  appSearchItem: AppSearchItem.product,
                ),
              );
            });
      },
    );
  }
}
