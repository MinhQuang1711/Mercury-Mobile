import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';

class ProductsSelected extends StatelessWidget {
  const ProductsSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return const GreyContainer(
      child: EmptyWidget(),
    );
  }
}
