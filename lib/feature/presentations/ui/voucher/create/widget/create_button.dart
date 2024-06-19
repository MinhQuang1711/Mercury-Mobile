import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/voucher/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateVoucherButton extends StatelessWidget {
  const CreateVoucherButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onSubmit() {
      if (formKey.currentState?.validate() == true) {
        var cubit = context.read<CommonVoucherCubit>();
        var bloc = context.read<VoucherBloc>();
        bloc.add(VoucherEvent.create(cubit.state.voucher));
      }
    }

    return AppButton(
      label: "Xác nhận",
      onTap: onSubmit,
      buttonSize: ButtonSize.SIZE_24,
    );
  }
}
