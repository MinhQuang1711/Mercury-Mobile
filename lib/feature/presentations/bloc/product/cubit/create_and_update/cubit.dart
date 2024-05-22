import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/combo_box.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/state/state.dart';

import '../../../../../domain/model/combo_box/combo_box.dart';

class ProductCubit extends Cubit<ProductCubitState> {
  ProductCubit()
      : super(const ProductCubitState(
            dto: ProductRequest(detailProducts: []), comboBoxes: []));

  void initComboBoxes(List<ComboBox> val) {
    emit(state.copyWith(comboBoxes: val));
  }

  void changedName(String? val) {
    emit(state.copyWith(dto: state.dto.copyWith(name: val)));
  }

  void changedPrice(String? val) {
    final price = double.tryParse(val ?? "");
    emit(state.copyWith(dto: state.dto.copyWith(price: price)));
  }

  void addIngredient(ComboBox val) {
    final combobox = state.comboBoxes.getById(val.id ?? "");
    _removeComboBox(combobox);
    _addDetailProduct(val);
  }

  void removeIngredient(ComboBox val, List<ComboBox> initList) {
    final combobox = initList.getById(val.id ?? "");
    _addComboBox(combobox);
    _removeDetailProduct(val);
  }

  void _addComboBox(ComboBox val) {
    final oldList = List<ComboBox>.from(state.comboBoxes);
    emit(state.copyWith(comboBoxes: oldList..add(val)));
  }

  void _removeComboBox(ComboBox val) {
    final oldList = List<ComboBox>.from(state.comboBoxes);
    emit(state.copyWith(comboBoxes: oldList..remove(val)));
  }

  void _addDetailProduct(ComboBox val) {
    final oldList = List<ComboBox>.from(state.dto.detailProducts ?? []);
    emit(state.copyWith(
        dto: state.dto.copyWith(detailProducts: oldList..add(val))));
  }

  void _removeDetailProduct(ComboBox val) {
    final oldList = List<ComboBox>.from(state.dto.detailProducts ?? []);
    emit(state.copyWith(
        dto: state.dto.copyWith(detailProducts: oldList..add(val))));
  }
}
