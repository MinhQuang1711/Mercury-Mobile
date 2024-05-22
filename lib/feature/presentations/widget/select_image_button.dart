import 'package:flutter/material.dart';
import 'package:mercury/config/const/radius.dart';

import '../../../config/theme/color.dart';

class FileSelectionButton extends StatelessWidget {
  const FileSelectionButton({super.key, this.onTap});
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return _imageButtonSelectFile(onTap: onTap);
  }

  GestureDetector _imageButtonSelectFile({Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColor.grey2,
          borderRadius: AppContainerBorder.radius8,
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.image,
                  color: AppColor.blueShade2,
                ),
                SizedBox(width: 5),
                Text(" Chọn ảnh/phương tiện")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
