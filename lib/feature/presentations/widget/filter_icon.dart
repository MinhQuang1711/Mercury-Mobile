import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

class FilterIcon extends StatelessWidget {
  const FilterIcon({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: const Icon(Icons.filter_list, color: AppColor.blue),
    );
  }
}
