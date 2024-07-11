import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';
import 'package:mercury/feature/presentations/ui/account/view/update_bank_screen/widget/bank_field.dart';
import 'package:mercury/feature/presentations/ui/account/view/update_bank_screen/widget/bank_number.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import 'widget/receiver_name.dart';

class UpdateBankScreen extends StatelessWidget {
  const UpdateBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<UpdateBankCubit>()..getBank()),
      ],
      child: const UpdateBankPage(),
    );
  }
}

class UpdateBankPage extends StatelessWidget {
  const UpdateBankPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      // height: size.height * 0.8,
      padding: AppPadding.padding12,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _title(),
          const SizedBox(height: 35),
          const BankField(),
          const SizedBox(height: 15),
          const BankNumber(),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: ReceiverName(),
          ),
          SizedBox(height: size.width / 2),
          const AppButton(label: "Xác nhận"),
        ],
      ),
    );
  }

  Text _title() {
    return Text(
      "Cập nhật tài khoản thanh toán",
      style: bodyBold.copyWith(color: AppColor.blue),
    );
  }
}
