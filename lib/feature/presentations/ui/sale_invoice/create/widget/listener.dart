import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/sale_invoice/bloc/state/state.dart';

class SaleInvoiceListenWidget extends StatelessWidget {
  const SaleInvoiceListenWidget({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<SaleInvoiceBloc, SaleInvoiceState>(
      listener: (context, state) => state.whenOrNull(
        created: (msg) => context.pop(msg),
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
