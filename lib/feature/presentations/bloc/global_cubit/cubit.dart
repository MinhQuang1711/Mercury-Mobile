import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/global_cubit/state/state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit()
      : super(const GlobalState(
            reloadProduct: false,
            reloadDasboard: false,
            reloadSaleInvoice: false,
            reloadImportInvoice: false));

  void changedReloadProduct() {
    emit(state.copyWith(reloadProduct: true));
    emit(state.copyWith(reloadProduct: false));
  }

  void changedReloadDashboard() {
    emit(state.copyWith(reloadDasboard: true));
    emit(state.copyWith(reloadDasboard: false));
  }

  void changedReloadSaleInvoice() {
    emit(state.copyWith(reloadSaleInvoice: true));
    emit(state.copyWith(reloadSaleInvoice: false));
  }

  void changedReloadImportInvoice() {
    emit(state.copyWith(reloadImportInvoice: true));
    emit(state.copyWith(reloadImportInvoice: false));
  }
}
