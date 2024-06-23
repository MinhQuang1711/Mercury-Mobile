import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/customer/bloc/state/state.dart';

class CustomerListener extends StatelessWidget {
  const CustomerListener({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return BlocListener<CustomerBloc, CustomerState>(
      listener: (context, state) => state.whenOrNull(
        success: (msg) => context.pop(msg),
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
