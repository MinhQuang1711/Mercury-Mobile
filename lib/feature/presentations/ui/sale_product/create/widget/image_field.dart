import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';

import '../../../../bloc/product/cubit/create_and_update/state/state.dart';
import '../../../../widget/select_image_button.dart';

class ProductImageField extends StatelessWidget {
  const ProductImageField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _tittle(),
        const Divider(),
        const SizedBox(height: 8),
        Padding(
          padding: AppPadding.padding14,
          child: Column(
            children: [
              _buttonSelectImage(context),
              const SizedBox(height: 15),
              BlocBuilder<ProductCubit, ProductCubitState>(
                buildWhen: (p, c) => p.dto.attachFile != c.dto.attachFile,
                builder: (context, state) => state.dto.attachFile == null
                    ? const SizedBox()
                    : _image(state),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  SizedBox _image(ProductCubitState state) {
    return SizedBox(
      width: double.infinity,
      height: 200,
      child: Image.memory(
        base64Decode(state.dto.attachFile!),
        fit: BoxFit.fill,
      ),
    );
  }

  Text _tittle() {
    return Text("Ảnh sản phẩm",
        style: bodyBold.copyWith(color: AppColor.blueShade2));
  }

  Widget _buttonSelectImage(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return FileSelectionButton(
      onTap: cubit.selectImage,
    );
  }
}
