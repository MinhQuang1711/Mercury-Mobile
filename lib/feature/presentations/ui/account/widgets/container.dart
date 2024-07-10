import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

import '../../../../../config/const/radius.dart';
import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';

class ContainerAccount extends StatelessWidget {
  const ContainerAccount(
      {super.key, required this.title, required this.child, this.style});
  final String title;
  final Widget child;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: AppPadding.padding16,
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: AppContainerBorder.radius8,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: (style ?? h6Bold).copyWith(fontFamily: ""),
          ),
          const SizedBox(height: 20),
          child,
        ],
      ),
    );
  }
}
