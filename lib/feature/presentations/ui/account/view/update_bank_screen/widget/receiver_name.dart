import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/radius.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/core/utils/singleton/user_singleton.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/state/state.dart';

class ReceiverName extends StatefulWidget {
  const ReceiverName({super.key});

  @override
  State<ReceiverName> createState() => _ReceiverNameState();
}

class _ReceiverNameState extends State<ReceiverName> {
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    _controller.text = UserSingleton.instance.user?.reciverName ?? "";
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: BlocListener<UpdateBankCubit, UpdateBankState>(
        listenWhen: (p, c) =>
            p.request.bankInfo?.reciverName != c.request.bankInfo?.reciverName,
        listener: (context, state) {
          if (state.request.bankInfo?.reciverName != null &&
              state.request.bankInfo!.reciverName!.isNotEmpty) {
            _controller.text = state.request.bankInfo?.reciverName ?? "";
          }
        },
        child: TextFormField(
          readOnly: true,
          controller: _controller,
          style: bodyMedium.copyWith(color: AppColor.black),
          decoration: InputDecoration(
            isDense: true,
            labelText: "Tên người nhận",
            enabledBorder: _border(),
            focusedBorder: _border(),
            disabledBorder: _border(),
            labelStyle: captionRegular.copyWith(color: AppColor.blue),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder _border() {
    return OutlineInputBorder(
      borderSide: const BorderSide(
        width: 0.7,
        color: AppColor.blue,
      ),
      borderRadius: AppContainerBorder.radius8,
    );
  }
}
