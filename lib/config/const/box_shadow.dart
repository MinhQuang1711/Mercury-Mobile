import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';

List<BoxShadow> defaultBoxShadow = [
  BoxShadow(
    blurRadius: 5,
    spreadRadius: 2,
    offset: const Offset(2, 2),
    color: AppColor.grey3.withOpacity(0.35),
  ),
];
