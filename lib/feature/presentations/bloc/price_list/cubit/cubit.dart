import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/detail_price/detail_price.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/state/state.dart';
import 'package:mercury/feature/presentations/ui/price_list/view/select_prod.dart';

class PriceListCubit extends Cubit<PriceListState> {
  PriceListCubit()
      : super(const PriceListState(
          comboBoxes: [],
          dto: PriceListRequest(
            detailPrices: [],
          ),
        ));

  void initComboBoxes(List<ComboBox> comboBoxes) {
    emit(state.copyWith(comboBoxes: comboBoxes));
  }

  void changedName(String? val) {
    emit(state.copyWith(dto: state.dto.copyWith(name: val)));
  }

  void selectProduct({
    required BuildContext context,
    required ComboBox comboBox,
  }) async {
    double? price = await context.showBottomSheet<double>(SetSalePriceScreen(
      comboBox: comboBox,
    ));
    if (price != null) {
      _addProduct(comboBox, price);
    }
  }

  void _addProduct(ComboBox comboBox, double price) {
    // Xóa phần tử đã chọn khỏ anh sách có thể lựa chọn
    var oldComboBoxes = List<ComboBox>.from(state.comboBoxes);
    var newComboBoxes = oldComboBoxes..remove(comboBox);
    // Cập nhật danh sách detailPrice
    var detailPrice = DetailPrice(
      salePrice: price,
      productId: comboBox.id,
      prodName: comboBox.name,
      defaultPrice: comboBox.price,
    );
    var oldDetailPrice = List<DetailPrice>.from(state.dto.detailPrices ?? []);
    var newDetailPrice = oldDetailPrice..add(detailPrice);

    emit(
      state.copyWith(
        comboBoxes: newComboBoxes,
        dto: state.dto.copyWith(detailPrices: newDetailPrice),
      ),
    );
  }

  void removeProduct(DetailPrice detailPrice) {
    // Xóa DetailPrice khỏi danh sách dã chọn
    var oldDetailPrice = List<DetailPrice>.from(state.dto.detailPrices ?? []);
    var newDetailPrice = oldDetailPrice..remove(detailPrice);

    // Thêm ComboBox vào danh sách có thể lựa chọn
    var comboBox = ComboBox(
      id: detailPrice.productId,
      name: detailPrice.prodName,
      price: detailPrice.defaultPrice,
    );
    var newComboBoxes = List<ComboBox>.from(state.comboBoxes)..add(comboBox);

    emit(
      state.copyWith(
        comboBoxes: newComboBoxes,
        dto: state.dto.copyWith(detailPrices: newDetailPrice),
      ),
    );
  }
}
