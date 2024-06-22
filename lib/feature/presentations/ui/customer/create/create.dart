import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/feature/presentations/ui/customer/widget/birthday.dart';
import 'package:mercury/feature/presentations/ui/customer/widget/name_field.dart';
import 'package:mercury/feature/presentations/ui/customer/widget/phonenumber.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../../../config/theme/color.dart';
import '../../../../../config/theme/text_style.dart';
import '../../../widget/factory/screen/create_screen.dart';

class CreateCustomerScreen extends StatelessWidget {
  const CreateCustomerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateCustomerPage();
  }
}

class CreateCustomerPage extends StatelessWidget {
  const CreateCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(context),
      body: const AppStack(
        bottomWidget: SizedBox(),
        backgroundWidget: Column(
          children: [
            CustomerNameField(),
            SizedBox(height: 15),
            PhoneNumberNameField(),
            SizedBox(height: 15),
            CustomerBirthDayField(),
          ],
        ),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
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
}
