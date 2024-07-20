import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/price_list/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../widget/detail_price_list.dart';
import '../widget/name_field.dart';
import '../widget/setting_price_button.dart';
import '../widget/title.dart';
import 'widget/create_button.dart';
import 'widget/listenner.dart';

class CreatePriceList extends StatelessWidget {
  const CreatePriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<PriceListCubit>()),
        BlocProvider(create: (_) => getIt.get<PriceListBloc>()),
        BlocProvider(create: (_) => getIt.get<ComboBoxCubit>()..getProducts())
      ],
      child: const CreatePricePage(),
    );
  }
}

class CreatePricePage extends StatelessWidget {
  const CreatePricePage({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final cubit = context.read<PriceListCubit>();
    return CreatePriceListener(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: CreateAppBar(context),
        body: AppStack(
          formKey: formKey,
          bottomWidget: CreateButton(formKey: formKey),
          backgroundWidget: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameField(
                onChanged: cubit.changedName,
              ),
              const SizedBox(height: 10),
              const SettingProductTitle(),
              const SettingProductButton(),
              const SizedBox(height: 25),
              const Align(
                alignment: Alignment.center,
                child: DetailPriceList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
