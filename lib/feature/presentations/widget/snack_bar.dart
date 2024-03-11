import 'package:flutter/material.dart';

import '../../../config/const/padding.dart';
import '../../../config/theme/color.dart';
import '../../../config/theme/text_style.dart';

class AppSnackbar extends SnackBar {
  AppSnackbar({
    super.key,
    bool? isSuccess,
    required BuildContext context,
    required String content,
  }) : super(
          margin: AppPadding.padding16,
          padding: const EdgeInsets.all(10),
          behavior: SnackBarBehavior.floating,
          backgroundColor: isSuccess == true ? AppColor.green : AppColor.red,
          content: Center(
            child: Text(
              content,
              style: captionRegular.copyWith(color: Colors.white),
            ),
          ),
        );
}
