import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/config/theme/color.dart';

import '../../../config/theme/text_style.dart';
import 'button/button.dart';

class NotifiDialog extends StatelessWidget {
  const NotifiDialog({
    super.key,
    this.content,
    required this.onTap,
  });
  final String? content;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 10),
        const Text("Xác nhận xóa?"),
        const Divider(),
        const SizedBox(height: 15),
        Wrap(
          alignment: WrapAlignment.center,
          children: [
            Text(
              "Bạn có chắc chắn xóa",
              style: bodyRegular.copyWith(color: AppColor.grey4),
            ),
            if (content != null)
              Text(
                content!,
                style: bodyBold.copyWith(color: AppColor.black),
              ),
          ],
        ),
        const SizedBox(height: 35),
        SizedBox(
          width: double.infinity,
          child: AppButton(
            onTap: onTap,
            label: "Xác nhận ",
            buttonSize: ButtonSize.SIZE_24,
            buttonType: ButtonType.FILL,
            backgroundColor: AppColor.red,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: AppButton(
            label: "Hủy",
            onTap: () => context.pop(),
            buttonType: ButtonType.FILL,
            textColor: Colors.black54,
            buttonSize: ButtonSize.SIZE_24,
            backgroundColor: Colors.grey.shade300,
          ),
        ),
      ],
    );
  }
}
