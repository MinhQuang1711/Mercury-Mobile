import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    void onTap() {
      if (formKey.currentState?.validate() == true) {
        final cubit = context.read<PriceListCubit>();
        context
            .read<PriceListBloc>()
            .add(PriceListEvent.create(cubit.state.dto));
      }
    }

    var button = AppButton(label: "Xác nhận", onTap: onTap);

    return BlocBuilder<PriceListBloc, PriceListState>(
      builder: (_, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(
          isLoading: true,
          onTap: () {},
        ),
      ),
    );
  }
}
