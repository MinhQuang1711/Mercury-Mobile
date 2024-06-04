import 'package:flutter/material.dart';

import '../../../../../config/theme/text_style.dart';

class ItemOfChart extends StatelessWidget {
  const ItemOfChart({super.key, this.color, this.content});
  final Color? color;
  final String? content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CircleAvatar(
            radius: 5,
            backgroundColor: color,
          ),
          const SizedBox(width: 10),
          Text(
            content ?? "",
            style: captionRegular,
          )
        ],
      ),
    );
  }
}
