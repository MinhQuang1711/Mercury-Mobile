import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class CreatePriceList extends StatelessWidget {
  const CreatePriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreatePricePage();
  }
}

class CreatePricePage extends StatelessWidget {
  const CreatePricePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CreateAppBar(context),
      body: AppStack(
        bottomWidget: const AppButton(label: "Xác nhận"),
        backgroundWidget: Padding(
          padding: AppPadding.padding12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ColumnInput(
                titleLabel: "Tên bảng giá",
                bottomWidget: AppTextField(
                  hintText: "Nhập tên bảng giá",
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Thiết lập giá sản phẩm",
                  style: captionBold.copyWith(color: AppColor.grey5),
                ),
              ),
              const AppButton(
                buttonType: ButtonType.OUTLINE,
                buttonSize: ButtonSize.SIZE_24,
                label: "Thiết lập thêm sản phẩm",
              ),
              const SizedBox(height: 15),
              const GreyContainer(child: EmptyWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
