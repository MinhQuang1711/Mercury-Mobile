import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/combo_box.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/extension/platformfile.dart';
import 'package:mercury/core/utils/service/file_picker.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/domain/model/product/product_request.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/state/state.dart';

import '../../../../../domain/model/combo_box/combo_box.dart';

class ProductCubit extends Cubit<ProductCubitState> {
  ProductCubit()
      : super(const ProductCubitState(
            dto: ProductRequest(detailProducts: []), comboBoxes: []));

  void initDto(Product product) {
    var newDto = state.dto.copyWith(
      id: product.id,
      name: product.name,
      price: product.salePrice,
      attachFile: product.imageByte,
    );
    emit(state.copyWith(dto: newDto));
  }

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

  void selectImage() async {
    var image = await FilePickerService.pickSingleFile();
    if (image != null) {
      emit(state.copyWith(
          dto: state.dto.copyWith(attachFile: image.toBase64())));
    }
  }

  void validateDetailProduct(BuildContext context) {
    if ((state.dto.detailProducts ?? []).isEmpty) {
      context.showFailureSnackBar("Danh sách nguyên liệu không được trống");
    }
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
        dto: state.dto.copyWith(detailProducts: oldList..remove(val))));
  }
}
