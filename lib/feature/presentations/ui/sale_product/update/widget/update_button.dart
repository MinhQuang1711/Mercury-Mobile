import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';

import '../../../../bloc/product/cubit/create_and_update/cubit.dart';

class UpdateProductButton extends StatelessWidget {
  const UpdateProductButton({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    void onTap() {
      final cubit = context.read<ProductCubit>()
        ..validateDetailProduct(context);
      if (formKey.currentState?.validate() == true &&
          (cubit.state.dto.detailProducts ?? []).isNotEmpty) {
        // TODO : implement logic update
      }
    }

    final button = AppButton(
      onTap: onTap,
      label: "Xác nhận",
    );
    return button;
  }
}
