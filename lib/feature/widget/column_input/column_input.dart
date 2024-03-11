import 'package:flutter/material.dart';

import '../../../config/theme/color.dart';
import '../../../config/theme/text_style.dart';

class ColumnInput extends StatelessWidget {
  const ColumnInput({
    super.key,
    this.isRequied,
    required this.titleLabel,
    required this.bottomWidget,
  });
  final bool? isRequied;
  final String titleLabel;
  final Widget bottomWidget;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              titleLabel,
              style: captionMedium.copyWith(color: Colors.grey.shade800),
            ),
            if (isRequied == true)
              Text(" *", style: captionBold.copyWith(color: AppColor.red)),
          ],
        ),
        const SizedBox(height: 8),
        bottomWidget,
      ],
    );
  }
}
