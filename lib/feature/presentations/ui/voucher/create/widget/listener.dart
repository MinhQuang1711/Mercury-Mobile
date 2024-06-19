import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/voucher/bloc/state/state.dart';

class VoucherBlocListener extends StatelessWidget {
  const VoucherBlocListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<VoucherBloc, VoucherState>(
      listener: (context, state) => state.whenOrNull(
        failure: (msg) => context.showFailureSnackBar(msg),
        createSuccess: (msg) => context.pop(msg),
      ),
      child: child,
    );
  }
}
