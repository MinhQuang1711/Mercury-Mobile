import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/network.dart';
import 'package:mercury/feature/domain/model/bank_request_update/bank_request_update.dart';
import 'package:mercury/feature/domain/repositories/i_account_repository.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/factory/screen/update_screen.dart';

class AccountBloc extends Bloc<AccountEvent, AccountState> {
  final IAccountRepository repo;
  AccountBloc(this.repo) : super(const AccountState.init()) {
    on<AccountEvent>(_onEvent);
  }

  void _onEvent(AccountEvent event, Emitter emitter) async {
    await event.when(
      updateBank: (request) async => await _updateBank(request, emitter),
    );
  }

  Future _updateBank(BankRequestUpdate request, Emitter emitter) async {
    emitter(const AccountState.loading());
    (await repo.updateBank(request)).on(
      whenSuccess: (data) =>
          emitter(AccountState.success(UpdateScreen().getMessage())),
      whenFaild: (msg) => emitter(AccountState.failure(msg)),
    );
  }
}
