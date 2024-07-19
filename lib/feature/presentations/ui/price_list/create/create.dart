import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/presentations/bloc/combo_box/cubit.dart';
import 'package:mercury/feature/presentations/bloc/price_list/cubit/cubit.dart';
import 'package:mercury/feature/presentations/widget/app_bar/create_app_bar.dart';
import 'package:mercury/feature/presentations/widget/button/button.dart';
import 'package:mercury/feature/presentations/widget/empty_widget.dart';
import 'package:mercury/feature/presentations/widget/grey_container.dart';
import 'package:mercury/feature/presentations/widget/stack/screen_allway_see_bottom.dart';

import '../widget/name_field.dart';
import '../widget/setting_price_button.dart';
import '../widget/title.dart';

class CreatePriceList extends StatelessWidget {
  const CreatePriceList({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => getIt.get<PriceListCubit>()),
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CreateAppBar(context),
      body: const AppStack(
        bottomWidget: AppButton(label: "Xác nhận"),
        backgroundWidget: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NameField(),
            SizedBox(height: 10),
            SettingProductTitle(),
            SettingProductButton(),
            SizedBox(height: 15),
            GreyContainer(child: EmptyWidget()),
          ],
        ),
      ),
    );
  }
}
