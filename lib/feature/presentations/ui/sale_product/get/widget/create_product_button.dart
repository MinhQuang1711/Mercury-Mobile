import 'package:flutter/material.dart';
import 'package:mercury/config/router/path.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/widget/square_create_button.dart';

class CreateProductButton extends StatelessWidget {
  const CreateProductButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      context.pushAndListen(location: AppPath.createProduct);
    }

    return SquareCreateButton(
      onTap: onTap,
    );
  }
}
