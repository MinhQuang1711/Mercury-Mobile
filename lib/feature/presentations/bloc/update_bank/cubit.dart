import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/repositories/ibank_repository.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/state/state.dart';

class UpdateBankCubit extends Cubit<UpdateBankState> {
  final IBankRepository repo;
  UpdateBankCubit(this.repo) : super(const UpdateBankState(banks: []));

  void getBank() async {
    (await repo.getBanks()).on(
      whenSuccess: (data) => emit(state.copyWith(banks: data)),
      whenFaild: (msg) {},
    );
  }
}
