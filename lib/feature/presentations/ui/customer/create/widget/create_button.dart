import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/customer/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CustomerCreateButton extends StatelessWidget {
  const CustomerCreateButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        final cubit = context.read<CommonCustomerCubit>();
        final bloc = context.read<CustomerBloc>();
        var request = cubit.state.request;
        bloc.add(CustomerEvent.create(request));
      }
    }

    var button = AppButton(
      label: "Xác nhận",
      onTap: onTap,
    );
    return BlocBuilder<CustomerBloc, CustomerState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(
          isLoading: true,
          onTap: () {},
        ),
      ),
    );
  }
}
