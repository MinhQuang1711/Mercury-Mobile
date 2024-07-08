import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../config/theme/color.dart';
import '../../bloc/splash/cubit.dart';
import '../../bloc/splash/state/state.dart';
import 'widgets/bottom_bar.dart';
import 'widgets/tab_view.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashPage();
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: SplashAppBar(),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child: SplashTabView()),
            Positioned(
              left: 10,
              right: 10,
              bottom: 15,
              child: SplashBottomBar(),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const SplashBottomBar(),
    );
  }

  // Widget _appBar({Color? color}) with PreferredSizeWidget  {
  //   return BlocBuilder<SubjectBloc, SubjectState>(
  //     builder: (context, state) {
  //       return AppBar(
  //         toolbarHeight: 1,
  //         backgroundColor: color ?? AppColor.blue,
  //       );
  //     },
  //   );
  // }
}

class SplashAppBar extends StatelessWidget implements PreferredSizeWidget {
  const SplashAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashCubit, SplashState>(
      buildWhen: (p, c) => p.index != c.index,
      builder: (context, state) {
        if (state.index == 2) {
          return _appBar(color: AppColor.white);
        }
        return _appBar();
      },
    );
  }

  AppBar _appBar({Color? color}) => AppBar(
        toolbarHeight: 1,
        backgroundColor: color ?? AppColor.blue,
      );

  @override
  Size get preferredSize => const Size.fromHeight(1);
}
