import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/detail_price/detail_price.dart';
import 'package:mercury/feature/domain/model/price_list_request/price_list_request.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/state/state.dart';

class PriceListCubit extends Cubit<PriceListState> {
  PriceListCubit()
      : super(const PriceListState(
          comboBoxes: [],
          dto: PriceListRequest(),
        ));

  void changedName(String? val) {
    emit(state.copyWith(dto: state.dto.copyWith(name: val)));
  }

  void selectProduct(ComboBox comboBox, double price) {
    // Xóa phần tử đã chọn khỏ anh sách có thể lựa chọn
    var oldComboBoxes = List<ComboBox>.from(state.comboBoxes);
    var newComboBoxes = oldComboBoxes..remove(comboBox);
    // Cập nhật danh sách detailPrice
    var detailPrice = DetailPrice(productId: comboBox.id, salePrice: price);
    var oldDetailPrice = List<DetailPrice>.from(state.dto.detailPrices ?? []);
    var newDetailPrice = oldDetailPrice..add(detailPrice);

    emit(
      state.copyWith(
        comboBoxes: newComboBoxes,
        dto: state.dto.copyWith(detailPrices: newDetailPrice),
      ),
    );
  }

  void removeProduct(DetailPrice detailPrice, List<ComboBox> comboBoxes) {
    // Xóa DetailPrice khỏi danh sách dã chọn
    var oldDetailPrice = List<DetailPrice>.from(state.dto.detailPrices ?? []);
    var newDetailPrice = oldDetailPrice..remove(detailPrice);

    // Thêm ComboBox vào danh sách có thể lựa chọn
    var oldComboBoxes = List<ComboBox>.from(state.comboBoxes);
    var comboBox = comboBoxes.firstWhere((e) => e.id == detailPrice.productId);
    var newComboBoxes = oldComboBoxes..add(comboBox);

    emit(
      state.copyWith(
        comboBoxes: newComboBoxes,
        dto: state.dto.copyWith(detailPrices: newDetailPrice),
      ),
    );
  }
}
