import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/combo_box/combo_box.dart';
import 'package:mercury/feature/domain/model/import_invoice_request/import_invoice_request.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/state/state.dart';

class CommonImportInvoiceCubit extends Cubit<CommonImportInvoiceState> {
  CommonImportInvoiceCubit()
      : super(const CommonImportInvoiceState(ImportInvoiceRequest()));
  void addIngredient(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.ingredients ?? []);
    final newList = oldList..add(val);

    emit(
      state.copyWith(
        request: state.request.copyWith(ingredients: newList),
      ),
    );
  }

  void removeIngredient(ComboBox val) {
    final oldList = List<ComboBox>.from(state.request.ingredients ?? []);
    emit(
      state.copyWith(
        request: state.request.copyWith(ingredients: oldList..remove(val)),
      ),
    );
  }

  void changedDescription(String? val) {
    emit(state.copyWith(request: state.request.copyWith(description: val)));
  }
}
