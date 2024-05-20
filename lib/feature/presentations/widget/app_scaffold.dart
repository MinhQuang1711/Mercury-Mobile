import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

class AppScafold extends StatelessWidget {
  const AppScafold({super.key, this.child});
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: AppPadding.padding12,
        child: child,
      ),
    );
  }
}
