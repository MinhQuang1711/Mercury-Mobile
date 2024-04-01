import 'package:flutter/material.dart';
import 'package:mercury/config/const/padding.dart';

class AppStack extends StatelessWidget {
  const AppStack({
    super.key,
    required this.bottomWidget,
    required this.backgroundWidget,
    required this.formKey,
  });
  final Widget bottomWidget;
  final Widget backgroundWidget;
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    final viewPadding = MediaQuery.of(context).viewPadding.bottom;
    const double defaultPadding = 12;
    return Padding(
      padding: AppPadding.padding12.copyWith(
          bottom: viewPadding < 10
              ? defaultPadding
              : viewPadding + defaultPadding), //
      child: Stack(
        children: [
          Positioned.fill(
            child: SingleChildScrollView(
              child: Form(
                key: formKey,
                child: backgroundWidget,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: bottomWidget,
          )
        ],
      ),
    );
  }
}
