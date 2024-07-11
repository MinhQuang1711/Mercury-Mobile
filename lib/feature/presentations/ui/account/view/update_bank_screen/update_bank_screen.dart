import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/const/padding.dart';
import 'package:mercury/core/utils/injection/get_it.dart';
import 'package:mercury/feature/domain/repositories/ibank_repository.dart';
import 'package:mercury/feature/presentations/bloc/account/bloc/bloc.dart';
import 'package:mercury/feature/presentations/bloc/update_bank/cubit.dart';
import 'package:mercury/feature/presentations/ui/account/view/update_bank_screen/widget/bank_info_screen.dart';

import 'widget/listenner.dart';
import 'widget/submit_pass_screen.dart';

class UpdateBankScreen extends StatelessWidget {
  const UpdateBankScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => UpdateBankCubit(getIt.get<IBankRepository>())
              ..getBank()
              ..init()),
        BlocProvider(create: (_) => getIt.get<AccountBloc>()),
      ],
      child: const UpdateBankPage(),
    );
  }
}

class UpdateBankPage extends StatefulWidget {
  const UpdateBankPage({super.key});

  @override
  State<UpdateBankPage> createState() => _UpdateBankPageState();
}

class _UpdateBankPageState extends State<UpdateBankPage> {
  final _pageController = PageController();
  late final UpdateBankCubit _cubit;
  @override
  void initState() {
    _cubit = context.read<UpdateBankCubit>();
    super.initState();
  }

  @override
  void dispose() {
    _cubit.close();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return AccountBlocListener(
      child: Container(
        padding: AppPadding.padding12,
        height: size.height * 0.7,
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            BankInfoScreen(cubit: _cubit, controller: _pageController),
            SubmitPassScreen(cubit: _cubit, controller: _pageController)
          ],
        ),
      ),
    );
  }
}
