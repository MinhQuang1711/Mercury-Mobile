import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(
        Icons.delete_outline,
        color: AppColor.grey5,
      ),
    );
  }
}
