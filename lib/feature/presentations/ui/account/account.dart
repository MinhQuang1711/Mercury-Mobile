import 'package:flutter/material.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/customer_and_cupon.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/invoice.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/reports.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/setting_account.dart';
import 'package:mercury/feature/presentations/ui/account/widgets/user_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AccountPage();
  }
}

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 234, 234),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserBar(),
              SizedBox(height: 8),
              AccountInvoice(),
              SizedBox(height: 8),
              CustomerAndCupon(),
              SizedBox(height: 8),
              Reports(),
              SizedBox(height: 8),
              SettingAccount(),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
