import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mercury/config/theme/color.dart';
import 'package:mercury/config/theme/text_style.dart';
import 'package:mercury/feature/presentations/bloc/splash/cubit.dart';
import 'package:mercury/feature/presentations/bloc/splash/state/state.dart';

class SplashBottomBar extends StatelessWidget {
  const SplashBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SplashCubit>();
    final items = [
      const BottomNavigationBarItem(
        label: "Trang chủ",
        icon: Icon(Icons.dashboard_customize_rounded),
      ),
      const BottomNavigationBarItem(
        label: "Hàng hóa",
        icon: Icon(Icons.local_drink_rounded),
      ),
      const BottomNavigationBarItem(
        label: "Hóa đơn",
        icon: Icon(Icons.wallet_outlined),
      ),
      const BottomNavigationBarItem(
        label: "Tài khoản",
        icon: Icon(Icons.account_circle_sharp),
      ),
    ];
    return BlocBuilder<SplashCubit, SplashState>(
      builder: (context, state) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: SizedBox(
            height: 65,
            child: BottomNavigationBar(
              items: items,
              backgroundColor: AppColor.blue,
              onTap: cubit.changedTab,
              currentIndex: state.index,
              selectedLabelStyle: detailMedium,
              unselectedLabelStyle: miniRegular,
              selectedItemColor: AppColor.white,
              type: BottomNavigationBarType.fixed,
              unselectedIconTheme: const IconThemeData(size: 17),
              unselectedItemColor: const Color.fromARGB(255, 197, 194, 194),
            ),
          ),
        );
      },
    );
  }
}
