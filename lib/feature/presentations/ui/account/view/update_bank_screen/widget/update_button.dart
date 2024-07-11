import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/state/state.dart';

import '../../../../../widget/button/button.dart';

class UpdateButton extends StatelessWidget {
  const UpdateButton({super.key, required this.controller});
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      controller.nextPage(
          duration: const Duration(milliseconds: 400), curve: Curves.easeInOut);
    }

    var button = AppButton(
      label: "Tiếp tục",
      onTap: onTap,
      sufWidget: const Icon(
        Icons.arrow_forward,
        color: AppColor.white,
      ),
    );
    return BlocBuilder<AccountBloc, AccountState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(isLoading: true, onTap: () {}),
      ),
    );
  }
}
