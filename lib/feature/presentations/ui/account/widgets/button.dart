import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';

class AccountButton extends StatelessWidget {
  const AccountButton({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });
  final Widget icon;
  final String title;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            icon,
            Text(
              "    $title",
              style: bodyRegular.copyWith(color: AppColor.grey5),
            ),
          ],
        ),
      ),
    );
  }
}
