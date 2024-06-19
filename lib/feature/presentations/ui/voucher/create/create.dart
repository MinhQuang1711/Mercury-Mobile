import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/enum/discunt_type.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/voucher/cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/voucher/cubit/state/state.dart';
import 'package:mercury/feature/presentations/ui/voucher/create/widget/create_button.dart';
import 'package:mercury/feature/presentations/ui/voucher/create/widget/listener.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/discount_field.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/discount_type_selection.dart';
import 'package:mercury/feature/presentations/ui/voucher/widget/name_field.dart';

class CreateVoucherScreen extends StatelessWidget {
  const CreateVoucherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<CommonVoucherCubit>()),
        BlocProvider(create: (_) => getIt.get<VoucherBloc>()),
      ],
      child: const CreateVoucherPage(),
    );
  }
}

class CreateVoucherPage extends StatelessWidget {
  const CreateVoucherPage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<CommonVoucherCubit>();
    return VoucherBlocListener(
      child: Padding(
        padding: AppPadding.padding12,
        child: Form(
          key: formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              VoucherNameField(
                onChanged: cubit.changedName,
              ),
              _discountSelection(cubit),
              _discountField(cubit),
              const SizedBox(height: 30),
              CreateVoucherButton(formKey: formKey),
            ],
          ),
        ),
      ),
    );
  }

  BlocBuilder<CommonVoucherCubit, CommonVoucherState> _discountSelection(
      CommonVoucherCubit cubit) {
    return BlocBuilder<CommonVoucherCubit, CommonVoucherState>(
      buildWhen: (p, c) => p.voucher.discountType != c.voucher.discountType,
      builder: (context, state) => DiscountTypeSelection(
        onChanged: cubit.changedDiscountType,
        discountType: state.voucher.discountType!,
      ),
    );
  }

  BlocBuilder<CommonVoucherCubit, CommonVoucherState> _discountField(
      CommonVoucherCubit cubit) {
    return BlocBuilder<CommonVoucherCubit, CommonVoucherState>(
      buildWhen: (p, c) => p.voucher.discountType != c.voucher.discountType,
      builder: (context, state) => DiscountField(
        discountType: state.voucher.discountType!,
        onChanged: state.voucher.discountType == DiscountType.VALUE
            ? cubit.changedDiscountValue
            : cubit.changedDiscountPercent,
      ),
    );
  }
}
