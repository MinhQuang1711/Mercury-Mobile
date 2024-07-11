import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/bank_info/bank_info.dart';
import 'package:mercury/feature/domain/repositories/ibank_repository.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/state/state.dart';
import 'package:select_button_package/model/search_item.dart';

import '../../../data/model/bank/bank.dart';

class UpdateBankCubit extends Cubit<UpdateBankState> {
  final IBankRepository repo;
  UpdateBankCubit(this.repo)
      : super(
          const UpdateBankState(
            banks: [],
            bankInfo: BankInfo(),
          ),
        );

  void getBank() async {
    (await repo.getBanks()).on(
      whenSuccess: (data) => emit(state.copyWith(banks: data)),
      whenFaild: (msg) {},
    );
  }

  void lookUp(
    String? accountNumber,
  ) async {
    (await repo.lookUp(
      accountNumber: accountNumber ?? "",
      bin: state.bankInfo.bin ?? "",
    ))
        .on(
      whenSuccess: (data) => emit(
        state.copyWith(
          bankInfo: state.bankInfo.copyWith(
            name: data,
            accountNumber: accountNumber,
          ),
        ),
      ),
      whenFaild: (msg) {},
    );
  }

  void onSelectBank(SearchItem<Bank> item) {
    emit(state.copyWith(
        bankInfo: state.bankInfo.copyWith(
      bin: item.item.bin,
      code: item.item.code,
      shortName: item.item.shortName,
    )));
  }
}
