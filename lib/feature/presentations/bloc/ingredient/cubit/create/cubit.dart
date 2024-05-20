import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/model/ingredient/create_and_update.dart';
import 'package:mercury/feature/presentations/bloc/ingredient/cubit/create/state/state.dart';

class CreateIngredientCubit extends Cubit<CreateIngredientState> {
  CreateIngredientCubit()
      : super(const CreateIngredientState(dto: CreateAndUpdateIngredient()));

  void changedName(String? val) {
    emit(state.copyWith(dto: state.dto.copyWith(name: val ?? "")));
  }

  void changedCost(String? val) {
    final cost = double.tryParse(val ?? "") ?? 0;
    emit(state.copyWith(dto: state.dto.copyWith(cost: cost)));
  }

  void changedWeight(String? val) {
    final weight = double.tryParse(val ?? "") ?? 0;
    emit(state.copyWith(dto: state.dto.copyWith(weight: weight)));
  }
}
