import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/data/model/product/product.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/product/bloc/state/state.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

class DeleteProductScreen extends StatelessWidget {
  const DeleteProductScreen({super.key, required this.product});
  final Product product;

  @override
  Widget build(BuildContext context) {
    final bloc = getIt.get<ProductBloc>();
    return _blocListen(bloc);
  }

  BlocListener<ProductBloc, ProductState> _blocListen(ProductBloc bloc) {
    return BlocListener<ProductBloc, ProductState>(
      bloc: bloc,
      listener: (context, state) => state.whenOrNull(
        deleted: (msg) => context.pop(msg),
        failure: (msg) {
          context.showFailureSnackBar(msg);
          context.pop();
          return null;
        },
      ),
      child: NotifiDialog(
        content: product.name,
        onTap: () => bloc.add(ProductEvent.delete(product.id ?? "")),
      ),
    );
  }
}
