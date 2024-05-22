import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/state/state.dart';

class ProductBlocListen extends StatelessWidget {
  const ProductBlocListen({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductBloc, ProductState>(
      listener: (context, state) => state.whenOrNull(
        created: (msg) => context.pop(msg),
        failure: (msg) => context.showFailureSnackBar(msg),
      ),
      child: child,
    );
  }
}
