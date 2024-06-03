import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';
import 'package:mercury/feature/presentations/widget/column_input/column_input.dart';
import 'package:mercury/feature/presentations/widget/textfield/textfield.dart';

class DescriptionField extends StatelessWidget {
  const DescriptionField({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CommonImportInvoiceCubit>();
    return ColumnInput(
      titleLabel: "Ghi chú",
      bottomWidget: AppTextField(
        maxLines: 4,
        onChanged: cubit.changedDescription,
        hintText: "Nhập ghi chú hóa đơn",
      ),
    );
  }
}
