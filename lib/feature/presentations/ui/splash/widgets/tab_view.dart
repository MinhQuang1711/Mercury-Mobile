import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';
import 'package:mercury/feature/presentations/bloc/splash/state/state.dart';
import 'package:mercury/feature/presentations/ui/account/account.dart';
import 'package:mercury/feature/presentations/ui/product/product.dart';

import '../../dashboard/dashboard.dart';
import '../../manage_invoice/manage_invoice.dart';

class SplashTabView extends StatelessWidget {
  const SplashTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return IndexedStack(
          index: state.index,
          children: const [
            DashboardScreen(),
            ProductScreen(),
            ManageInvoiceScreen(),
            AccountScreen(),
          ],
        );
      },
    );
  }
}
