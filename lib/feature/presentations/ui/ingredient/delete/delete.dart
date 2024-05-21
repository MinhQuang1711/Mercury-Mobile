import 'package:flutter/material.dart';
import 'package:mercury/feature/data/model/ingredinent/ingredient.dart';
import 'package:mercury/feature/presentations/widget/nofity_dialog.dart';

class DeleteIngredientScreen extends StatelessWidget {
  const DeleteIngredientScreen({super.key, required this.ingredient});
  final Ingredient ingredient;

  @override
  Widget build(BuildContext context) {
    return NotifiDialog(
      onTap: () {},
      content: ingredient.name,
    );
  }
}
