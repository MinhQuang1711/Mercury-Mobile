import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/cubit/common_sale_invoice_cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import '../../../../bloc/sale_invoice/bloc/event/event.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key, this.formKey});
  final GlobalKey<FormState>? formKey;

  @override
  Widget build(BuildContext context) {
    void onSubmit() {
      final cubit = context.read<CommonSaleInvoiceCubit>();
      final bloc = context.read<SaleInvoiceBloc>();

      bloc.add(SaleInvoiceEvent.create(cubit.state.request));
    }

    var button = AppButton(
      label: "Xác nhận",
      onTap: onSubmit,
    );
    return BlocBuilder<SaleInvoiceBloc, SaleInvoiceState>(
      builder: (context, state) => state.maybeMap(
        orElse: () => button,
        loading: (value) => button.copyWith(isLoading: true, onTap: () {}),
      ),
    );
  }
}
