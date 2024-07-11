import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';

import '../../../../../../../config/theme/color.dart';
import '../../../../../bloc/account/bloc/bloc.dart';
import '../../../../../bloc/account/bloc/state/state.dart';
import '../../../../../widget/button/button.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      final cubit = context.read<UpdateBankCubit>();
      final bloc = context.read<AccountBloc>();
      if (formKey.currentState?.validate() == true) {
        bloc.add(AccountEvent.updateBank(cubit.state.request));
      }
    }

    var button = AppButton(
      label: "Tiếp tục",
      onTap: onTap,
      sufWidget: const Icon(
        Icons.arrow_forward,
        color: AppColor.white,
      ),
    );
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(isLoading: true, onTap: () {}),
      ),
    );
  }
}
