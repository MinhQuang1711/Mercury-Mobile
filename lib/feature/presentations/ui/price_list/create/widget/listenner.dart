import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';

import '../../../../bloc/price_list/bloc/state/state.dart';

class CreatePriceListener extends StatelessWidget {
  const CreatePriceListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<PriceListBloc, PriceListState>(
      listener: (context, state) => state.whenOrNull(
        created: (msg) => context.pop(msg),
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
