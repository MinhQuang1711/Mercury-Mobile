import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';

class SquareCreateButton extends StatelessWidget {
  const SquareCreateButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        Icons.add_box_rounded,
        color: AppColor.blue,
        size: 25,
      ),
    );
  }
}
