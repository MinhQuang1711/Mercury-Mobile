import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/product/cubit/create_and_update/cubit.dart';

import '../../../../bloc/product/cubit/create_and_update/state/state.dart';
import '../../../../widget/column_input/column_input.dart';
import '../../../../widget/select_image_button.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<ProductCubit, ProductCubitState>(
          buildWhen: (p, c) => p.dto.attachFile != c.dto.attachFile,
          builder: (context, state) => state.dto.attachFile == null
              ? const SizedBox()
              : Image.memory(base64Decode(state.dto.attachFile!)),
        ),
        _buttonSelectImage(context),
      ],
    );
  }

  ColumnInput _buttonSelectImage(BuildContext context) {
    final cubit = context.read<ProductCubit>();
    return ColumnInput(
      titleLabel: "Ảnh sản phẩm",
      bottomWidget: FileSelectionButton(
        onTap: cubit.selectImage,
      ),
    );
  }
}
