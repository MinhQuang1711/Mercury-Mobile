import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';

import '../../../../../widget/button/button.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      final cubit = context.read<UpdateBankCubit>();
      final bloc = context.read<AccountBloc>();
      bloc.add(AccountEvent.updateBank(cubit.state.request));
    }

    var button = AppButton(label: "Xác nhận", onTap: onTap);
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(isLoading: true, onTap: () {}),
      ),
    );
  }
}
