import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

class SquareFilterIcon extends StatelessWidget {
  const SquareFilterIcon({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: AppColor.blue,
          borderRadius: BorderRadius.circular(4),
        ),
        child: const Icon(
          Icons.filter_list_sharp,
          color: AppColor.white,
        ),
      ),
    );
  }
}
