import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/ui/sale_product/delete/delete.dart';
import 'package:mercury/feature/presentations/ui/sale_product/get/sale_product.dart';
import 'package:mercury/feature/presentations/widget/bottom_sheet_item.dart';

class ProductActionBottom extends StatelessWidget {
  const ProductActionBottom({
    super.key,
    required this.product,
    required this.parentContext,
  });
  final Product product;
  final BuildContext parentContext;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _productName(),
        _options(context),
      ],
    );
  }

  Container _options(BuildContext context) {
    final bloc = parentContext.read<ProductBloc>();
    return Container(
      margin: AppPadding.padding12,
      padding: AppPadding.padding14,
      decoration: BoxDecoration(
        color: AppColor.grey2,
        borderRadius: AppContainerBorder.radius10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _edit(context, bloc),
          const Divider(),
          _delete(context, bloc),
        ],
      ),
    );
  }

  BottomSheetItem _delete(BuildContext context, ProductBloc bloc) {
    void onTap() {
      context.pop();
      parentContext.showDialogAndListen(
        child: DeleteProductScreen(product: product),
        handleWhenHasValue: () => _refreshProduct(bloc),
      );
    }

    return BottomSheetItem(
      label: "Xóa",
      onTap: onTap,
    );
  }

  void _refreshProduct(ProductBloc bloc) {
    bloc.add(defaultProductEvent);
  }

  BottomSheetItem _edit(BuildContext context, ProductBloc bloc) {
    void onTap() {
      context.pop();
      parentContext.pushAndListen(
          object: product, location: AppPath.updateProduct);
    }

    return BottomSheetItem(
      iconData: Icons.settings,
      label: "Chỉnh sửa",
      onTap: onTap,
    );
  }

  Text _productName() {
    return Text(
      product.name ?? "",
      style: h6Bold.copyWith(color: AppColor.blueShade2),
    );
  }
}
