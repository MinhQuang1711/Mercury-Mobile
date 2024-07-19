import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../config/theme/color.dart';
import '../../../../config/theme/text_style.dart';
import '../factory/screen/create_screen.dart';

class CreateAppBar extends AppBar {
  CreateAppBar(BuildContext context, {super.key})
      : super(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () => context.pop(),
            child: const Icon(
              Icons.arrow_back_sharp,
              color: AppColor.white,
            ),
          ),
          backgroundColor: AppColor.blue,
          title: Text(
            CreateScreen().getTitle(),
            style: h6Bold.copyWith(color: AppColor.white),
          ),
        );
}
