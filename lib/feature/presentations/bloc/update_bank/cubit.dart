import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/core/utils/singleton/user_singleton.dart';
import 'package:mercury/feature/domain/model/bank_info/bank_info.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';
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
            request:
                BankRequestUpdate(bankInfo: BankInfo(), password: "123@123aA"),
          ),
        );

  void init() {
    var user = UserSingleton.instance.user;
    emit(state.copyWith(
        request: state.request.copyWith(
            bankInfo: state.request.bankInfo?.copyWith(
      bankBin: user?.bankBin,
      bankCode: user?.bankCode,
      reciverName: user?.reciverName,
      bankShortName: user?.bankShortName,
      reciverAccountNumber: user?.reciverAccountNumber,
    ))));
  }

  void getBank() async {
    (await repo.getBanks()).on(
      whenSuccess: (data) => emit(state.copyWith(banks: data)),
      whenFaild: (msg) {},
    );
  }

  void lookUp(String? accountNumber) async {
    (await repo.lookUp(
      accountNumber: accountNumber ?? "",
      bin: state.request.bankInfo?.bankBin ?? "",
    ))
        .on(
      whenSuccess: (data) => emit(
        state.copyWith(
          request: state.request.copyWith(
            bankInfo: state.request.bankInfo?.copyWith(
              reciverName: data,
              reciverAccountNumber: accountNumber,
            ),
          ),
        ),
      ),
      whenFaild: (msg) {},
    );
  }

  void onSelectBank(SearchItem<Bank> item) {
    emit(state.copyWith(
        request: state.request.copyWith(
      bankInfo: state.request.bankInfo?.copyWith(
        bankBin: item.item.bin,
        bankCode: item.item.code,
        bankShortName: item.item.shortName,
      ),
    )));
  }
}
