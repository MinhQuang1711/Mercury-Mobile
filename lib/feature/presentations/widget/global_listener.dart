import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/domain/enum/screen.dart';
import 'package:mercury/feature/presentations/bloc/global_cubit/cubit.dart';
import 'package:mercury/feature/presentations/bloc/global_cubit/state/state.dart';

class GlobalListenerWidget extends StatelessWidget {
  const GlobalListenerWidget({
    super.key,
    this.functionReload,
    required this.child,
    required this.screenEnum,
  });
  final Widget child;
  final ScreenEnum screenEnum;
  final Function()? functionReload;
  @override
  Widget build(BuildContext context) {
    return BlocListener<GlobalCubit, GlobalState>(
      listenWhen: (previous, current) {
        switch (screenEnum) {
          case ScreenEnum.INGREDIENT:
            return previous.reloadIngredient != current.reloadIngredient;
          case ScreenEnum.DASHBOARD:
            return previous.reloadDasboard != current.reloadDasboard;
          case ScreenEnum.SALE_INVOICE:
            return previous.reloadSaleInvoice != current.reloadSaleInvoice;
          case ScreenEnum.IMPORT_INVOICE:
            return previous.reloadImportInvoice != current.reloadImportInvoice;
        }
      },
      listener: (context, state) {
        if (state.reloadDasboard ||
            state.reloadIngredient ||
            state.reloadSaleInvoice ||
            state.reloadImportInvoice) {
          functionReload?.call();
        }
      },
      child: child,
    );
  }
}
