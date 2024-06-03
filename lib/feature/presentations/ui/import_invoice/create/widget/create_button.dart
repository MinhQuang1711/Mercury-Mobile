import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/event/event.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';

import '../../../../widget/button/button.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap() {
      final cubit = context.read<CommonImportInvoiceCubit>();
      if ((cubit.state.request.ingredients ?? []).isEmpty) {
        context.showFailureSnackBar("Danh sách nguyên liệu nhập trống");
      } else {
        final bloc = context.read<ImportInvoiceBloc>();
        bloc.add(ImportInvoiceEvent.create(cubit.state.request));
      }
    }

    var button = AppButton(
      label: "Xác nhận",
      onTap: onTap,
    );

    return BlocBuilder<ImportInvoiceBloc, ImportInvoiceState>(
      builder: (context, state) => state.maybeWhen(
        orElse: () => button,
        loading: () => button.copyWith(onTap: () {}, isLoading: true),
      ),
    );
  }
}
