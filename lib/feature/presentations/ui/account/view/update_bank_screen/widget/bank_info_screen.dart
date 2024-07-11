import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';

import '../../../../../../../config/theme/color.dart';
import '../../../../../../../config/theme/text_style.dart';
import 'bank_field.dart';
import 'bank_number.dart';
import 'next_page_button.dart';
import 'receiver_name.dart';

class BankInfoScreen extends StatelessWidget {
  const BankInfoScreen(
      {super.key, required this.cubit, required this.controller});
  final UpdateBankCubit cubit;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        _title(),
        const SizedBox(height: 35),
        BankField(onTap: cubit.onSelectBank),
        const SizedBox(height: 15),
        BankNumber(onCompleted: cubit.lookUp),
        const ReceiverName(),
        const Spacer(),
        NextPageButton(controller: controller),
      ],
    );
  }

  Text _title() {
    return Text(
      "Cập nhật tài khoản thanh toán",
      style: bodyBold.copyWith(color: AppColor.blue),
    );
  }
}
