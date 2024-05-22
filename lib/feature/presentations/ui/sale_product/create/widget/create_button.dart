import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

class CreateProductButton extends StatelessWidget {
  const CreateProductButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    void onTap() {
      final cubit = context.read<ProductCubit>()
        ..validateDetailProduct(context);
      if (formKey.currentState?.validate() == true &&
          (cubit.state.dto.detailProducts ?? []).isNotEmpty) {
        //TODO
      }
    }

    final button = AppButton(
      onTap: onTap,
      label: "Xác nhận",
    );

    return button;
  }
}
