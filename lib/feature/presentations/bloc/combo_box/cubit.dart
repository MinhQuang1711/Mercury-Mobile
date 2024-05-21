import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/repositories/i_combo_box.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/state/state.dart';

class ComboBoxCubit extends Cubit<ComboBoxState> {
  final IComboBoxRepository repo;
  ComboBoxCubit(this.repo) : super(const ComboBoxState(comboBoxes: []));
  void getIngredients() async {
    (await repo.getIngredients()).on(
      whenSuccess: (data) => emit(state.copyWith(comboBoxes: data)),
      whenFaild: (msg) {},
    );
  }
}
