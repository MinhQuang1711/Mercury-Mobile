import 'package:flutter/material.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/ui/update_domain/update_domain.dart';
import 'package:mercury/gen/assets.gen.dart';

class UpdateDomainButton extends StatelessWidget {
  const UpdateDomainButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      context.showBottomSheet(const UpdateDomainScreen());
    }

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Row(
          children: [
            ImageIcon(
              AssetImage(Assets.icon.domain.keyName),
              color: AppColor.blue,
            ),
            const SizedBox(width: 10),
            const Text(
              "Thay đổi domain truy cập?",
              style: captionMedium,
            ),
          ],
        ),
      ),
    );
  }
}
