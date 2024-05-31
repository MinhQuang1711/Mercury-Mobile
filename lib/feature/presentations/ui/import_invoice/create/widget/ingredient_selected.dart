import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';

class IngredientSelected extends StatelessWidget {
  const IngredientSelected({super.key});

  @override
  Widget build(BuildContext context) {
    return GreyContainer(
      child: [].isEmpty
          ? const EmptyWidget()
          : Column(children: [].map((e) => const SizedBox()).toList()),
    );
  }
}
