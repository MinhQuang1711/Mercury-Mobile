import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/state/state.dart';

class AccountBlocListener extends StatelessWidget {
  const AccountBlocListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<AccountBloc, AccountState>(
      listener: (context, state) => state.whenOrNull(
        success: (msg) => context.pop(msg),
        failure: (msg) {
          context.showFailureSnackBar(msg);
          context.pop();
          return null;
        },
      ),
      child: child,
    );
  }
}
