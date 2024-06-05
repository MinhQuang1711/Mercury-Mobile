import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:mercury/core/utils/extension/contetxt.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/bloc/state/state.dart';
import 'package:mercury/feature/presentations/bloc/import_invoice/cubit/common/cubit.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/create/widget/ingredient_field.dart';
import 'package:mercury/feature/presentations/ui/import_invoice/get/import_invoice.dart';
import 'package:mercury/feature/presentations/widget/app_bar.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../../../bloc/dashboard/cubit.dart';
import 'widget/create_button.dart';
import 'widget/description_field.dart';
import 'widget/ingredient_selected.dart';

class CreateImportInvoiceScreen extends StatelessWidget {
  const CreateImportInvoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => getIt.get<ComboBoxCubit>()..getIngredients()),
        BlocProvider(create: (_) => getIt.get<ImportInvoiceBloc>()),
        BlocProvider(create: (_) => getIt.get<CommonImportInvoiceCubit>()),
      ],
      child: const CreateImportInvoicePage(),
    );
  }
}

class CreateImportInvoicePage extends StatelessWidget {
  const CreateImportInvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ImportInvoiceBloc>();
    final dashboardCubit = context.read<DashboardCubit>();
    return BlocListener<ImportInvoiceBloc, ImportInvoiceState>(
      listener: (context, state) => state.whenOrNull(
        failure: (msg) => context.showFailureSnackBar(msg),
        success: (msg) {
          context.pop(msg);
          bloc.add(defaultImportInvoiceEvent);
          dashboardCubit
            ..getChartOfDay()
            ..getChartOfMonth()
            ..getfinancialRecordOfDay()
            ..getfinancialRecordOfMonth();
          return null;
        },
      ),
      child: const Scaffold(
        appBar: ActionAppBar(),
        body: AppStack(
          bottomWidget: CreateButton(),
          backgroundWidget: Column(
            children: [
              AddIngredientButton(),
              SizedBox(height: 10),
              IngredientSelected(),
              SizedBox(height: 20),
              DescriptionField(),
            ],
          ),
        ),
      ),
    );
  }
}
